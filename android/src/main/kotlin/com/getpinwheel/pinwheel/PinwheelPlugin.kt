package com.getpinwheel.pinwheel

import androidx.annotation.NonNull
import android.view.View
import android.graphics.Color
import android.content.Context
import android.os.Handler
import android.os.Looper
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import com.underdog_tech.pinwheel_android.Pinwheel
import com.underdog_tech.pinwheel_android.PinwheelEventListener
import com.underdog_tech.pinwheel_android.model.*
import android.webkit.WebView
import org.json.JSONObject
import com.google.gson.Gson

import android.widget.TextView
import io.flutter.plugin.common.*

data class PinwheelEventChannelArgument(
  val name: String,
  val payload: String?
)

/** PinwheelPlugin */
class PinwheelPlugin : FlutterPlugin, MethodCallHandler {
  private lateinit var channel: MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "pinwheel", JSONMethodCodec.INSTANCE)
    channel.setMethodCallHandler(this)

    flutterPluginBinding
      .platformViewRegistry
      .registerViewFactory("pinwheel-link-view", NativeViewFactory(flutterPluginBinding.binaryMessenger))
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}

class PluginListener(messenger: BinaryMessenger) : PinwheelEventListener {
  private val channel = MethodChannel(messenger, "pinwheel", JSONMethodCodec.INSTANCE)
  private val gson = Gson()

  override fun onSuccess(result: PinwheelResult) {
    Handler(Looper.getMainLooper()).post {
      channel.invokeMethod("onSuccess", gson.toJson(result))
    }
  }

  override fun onLogin(result: PinwheelLoginPayload) {
    Handler(Looper.getMainLooper()).post {
      channel.invokeMethod("onLogin", gson.toJson(result))
    }
  }
  
  override fun onLoginAttempt(result: PinwheelLoginAttemptPayload) {
    Handler(Looper.getMainLooper()).post {
      channel.invokeMethod("onLoginAttempt", gson.toJson(result))
    }
  }

  override fun onError(error: PinwheelError) {
    Handler(Looper.getMainLooper()).post {
      channel.invokeMethod("onError", gson.toJson(error))
    }
  }

  override fun onExit(error: PinwheelError?) {
    Handler(Looper.getMainLooper()).post {
      channel.invokeMethod("onExit", gson.toJson(error))
    }
  }

  override fun onEvent(eventName: PinwheelEventType, payload: PinwheelEventPayload?) {
    var argument: String? = null
    when (eventName) {
      PinwheelEventType.OPEN -> {
        val obj = PinwheelEventChannelArgument("open", null)
        argument = gson.toJson(obj)
      }
      PinwheelEventType.SELECT_EMPLOYER -> {
        val obj = PinwheelEventChannelArgument("select_employer", gson.toJson(payload))
        argument = gson.toJson(obj)
      }
      PinwheelEventType.SELECT_PLATFORM -> {
        val obj = PinwheelEventChannelArgument("select_platform", gson.toJson(payload))
        argument = gson.toJson(obj)
      }
      PinwheelEventType.INCORRECT_PLATFORM_GIVEN -> {
        val obj = PinwheelEventChannelArgument("incorrect_platform_given", gson.toJson(payload))
        argument = gson.toJson(obj)
      }
      PinwheelEventType.LOGIN -> {
        val obj = PinwheelEventChannelArgument("login", gson.toJson(payload))
        argument = gson.toJson(obj)
      }

      PinwheelEventType.INPUT_AMOUNT -> {
        val obj = PinwheelEventChannelArgument("input_amount", gson.toJson(payload))
        argument = gson.toJson(obj)
      }

      PinwheelEventType.INPUT_REQUIRED -> {
        val obj = PinwheelEventChannelArgument("input_required", null)
        argument = gson.toJson(obj)
      }

      PinwheelEventType.EXIT -> {
        val obj = PinwheelEventChannelArgument("exit", gson.toJson(payload))
        argument = gson.toJson(obj)
      }

      PinwheelEventType.SUCCESS -> {
        val obj = PinwheelEventChannelArgument("success", gson.toJson(payload))
        argument = gson.toJson(obj)
      }

      PinwheelEventType.ERROR -> {
        val obj = PinwheelEventChannelArgument("error", gson.toJson(payload))
        argument = gson.toJson(obj)
      }


    }

    Handler(Looper.getMainLooper()).post {
      channel.invokeMethod("onEvent", argument)
    }
  }
}

class NativeViewFactory(private val messenger: BinaryMessenger) : PlatformViewFactory(JSONMessageCodec.INSTANCE) {
  override fun create(context: Context, viewId: Int, args: Any?): PlatformView {
    val creationParams = args as JSONObject?
    return NativeView(context, messenger, viewId, creationParams)
  }
}

internal class NativeView(context: Context, messenger: BinaryMessenger, id: Int, creationParams: JSONObject?) : PlatformView {
  private val pinwheelEventListener: PinwheelEventListener
  private var webView: WebView?
  private var textView: TextView
  private var token: String?

  override fun getView(): View {
    val result = webView
    if (result != null) {
      return result
    }

    return textView
  }

  override fun dispose() {}

  init {
    pinwheelEventListener = PluginListener(messenger)

    val aToken = creationParams?.get("token") as String?
    if (aToken != null) {
      token = aToken
    } else {
      token = ""
    }

    webView = WebView(context)
    webView?.let {
      Pinwheel.init(it, readLinkToken(), pinwheelEventListener)
    }

    textView = TextView(context)
    textView.textSize = 36f
    textView.setBackgroundColor(Color.rgb(255, 255, 255))
    textView.text = "Oops! We ran into an error."

  }

  private fun readLinkToken(): String {
    token?.let {
      return it
    }
    return ""
  }
}
