import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pinwheel/models.dart';
import 'package:pinwheel/pinwheel.dart';
import 'package:http/http.dart' as http;
import 'token.dart';

const String API_SECRET = "";
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey[900]),
      home: Banking()
    );
  }
}

class Banking extends StatefulWidget {
  @override
  BankingState createState() => BankingState();
}

class BankingState extends State<Banking> {
  bool isLoading = false;
  String? error;

  @override
  void initState() {
    super.initState();
  }

  Future<void> initPlatformState() async {
    if (!mounted) return;

    setState(() {
      
    });
  }

  Widget _buildBody() {
    if (isLoading) {
      return Container(color: Colors.white,child: Center(child: CircularProgressIndicator(),));
    }
    return Scaffold(
      body: Center(child: 
        Column(children: [
          if (error != null) Text(error!),
          Padding(padding: EdgeInsets.only(top: 40),
            child: 
              ElevatedButton(child: 
                Text("Switch Direct Deposit"),
                onPressed: () {
                  isLoading = true;
                  handleButtonPress();
                }
              )
          ,)
      ],)
      )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BK BNK')
      ),
      body: _buildBody()
    );
  }

  _onExit(PinwheelExitPayload? payload) {
    print(payload);
    Navigator.pop(context);
  }

  _onEvent(String name, PinwheelEventPayload? payload) {
    print("name: ${name}, payload: ${payload}");
  }

  _onError(PinwheelError error) {
    print(error);
  }

  _onSuccess(PinwheelSuccessPayload payload) {
    print(payload);
  }

  _onLogin(PinwheelLoginPayload payload) {
    print(payload);
  }

  _onLoginAttempt(PinwheelLoginAttemptPayload payload) {
    print(payload);
  }

  Future<void> handleButtonPress() async {
    TokenAttributes attributes = TokenAttributes(
      account_number: "304119574487",
      account_type: "checking",
      job: "direct_deposit_switch",
      mode: "sandbox",
      org_name: "BK BNK",
      routing_number: "091302966",
      skip_exit_survey: false, 
      skip_intro_screen: false
    );
    TokenPayload? payload = await fetchToken(attributes);
    isLoading = false;
    if (error != null) {
      return;
    }
    if (payload == null) {
      error = "Failed to fetch token";
      return;
    }

    PinwheelLink link = PinwheelLink(
      token: payload.token, 
      onExit: _onExit,
      onError: _onError, 
      onEvent: _onEvent,
      onSuccess: _onSuccess,
      onLogin: _onLogin,
      onLoginAttempt: _onLoginAttempt,
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Container(
          color: Colors.white,
          child: SafeArea(child: link,)
        )
      )
    );
  }

  Future<TokenPayload?> fetchToken(TokenAttributes attributes) async {
    var body = attributes.toJson();
    var headers = {
      "Content-Type": "application/json",
      "X-API-SECRET": API_SECRET
    };
    var url = Uri.parse('https://sandbox.getpinwheel.com/v1/link_tokens');
    Response? response;
    try {
      response = await http.post(url, headers: headers, body: jsonEncode(body));
    } catch(exception) {
      error = exception.toString();
    }

    if (response == null) {
      return null;
    }

    if (response.statusCode == 200) {
      var endpointResponse = TokenResponse.fromJson(jsonDecode(response.body));
      return endpointResponse.data;
      
    } else {
      error = response.statusCode.toString() + ' - Failed to fetch token';
    }
  }
}