package com.getpinwheel.pinwheel

import android.content.Context
import android.graphics.Color
import android.os.Handler
import android.os.Looper
import android.view.View
import android.webkit.WebView
import android.widget.TextView
import androidx.annotation.NonNull
import com.google.gson.Gson
import com.underdog_tech.pinwheel_android.PinwheelViewGroupManager
import com.underdog_tech.pinwheel_android.PinwheelEventListener
import com.underdog_tech.pinwheel_android.PinwheelFrameLayout
import com.underdog_tech.pinwheel_android.model.*
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.*
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory
import org.json.JSONObject

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
    val argument = gson.toJson(
      PinwheelEventChannelArgument(
        eventName.toString().lowercase(),
        payload?.let { gson.toJson(it) }
      )
    )

    Handler(Looper.getMainLooper()).post {
      channel.invokeMethod("onEvent", argument)
    }
  }
}

class NativeViewFactory(private val messenger: BinaryMessenger) : PlatformViewFactory(JSONMessageCodec.INSTANCE) {
  override fun create(context: Context?, viewId: Int, args: Any?): PlatformView {
    val creationParams = args as JSONObject?
    return NativeView(context!!, messenger, viewId, creationParams)
  }
}

internal class NativeView(context: Context, messenger: BinaryMessenger, id: Int, creationParams: JSONObject?) : PlatformView {
  private val pinwheelEventListener: PinwheelEventListener
  private var pinwheelView: PinwheelFrameLayout
  private var textView: TextView
  private var token: String?
  private var useDarkMode: Boolean?
  private var useSecureOrigin: Boolean?

  override fun getView(): View {
    val result = pinwheelView
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

    useDarkMode = creationParams?.optBoolean("useDarkMode", false) ?: false
    useSecureOrigin = creationParams?.optBoolean("useSecureOrigin", false) ?: false

    pinwheelView = PinwheelViewGroupManager.init(
      context,
      readLinkToken(),
      pinwheelEventListener,
      "flutter",
      "4.0.0",
      useDarkMode = useDarkMode ?: false,
      useSecureOrigin = useSecureOrigin ?: false
    )

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
