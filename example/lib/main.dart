import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pinwheel/models.dart';
import 'package:pinwheel/pinwheel.dart';
import 'package:http/http.dart' as http;
import 'token.dart';

/// Provide via:
/// `flutter run --dart-define=PINWHEEL_API_SECRET=...`
const String API_SECRET = String.fromEnvironment('PINWHEEL_API_SECRET');
const bool ENABLE_SECURE_ORIGIN = true;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey[900]),
      home: Banking(),
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

  void _log(String message) {
    // ignore: avoid_print
    print("[pinwheel-example] $message");
  }

  @override
  void initState() {
    super.initState();
  }

  Future<void> initPlatformState() async {
    if (!mounted) return;

    setState(() {});
  }

  Widget _buildBody() {
    if (isLoading) {
      return Container(
        color: Colors.white,
        child: Center(child: CircularProgressIndicator()),
      );
    }
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 24),
          Text(
            "API_SECRET set: ${API_SECRET.isNotEmpty}",
            style: const TextStyle(color: Colors.black54),
          ),
          Text(
            "useSecureOrigin: $ENABLE_SECURE_ORIGIN",
            style: const TextStyle(color: Colors.black54),
          ),
          if (error != null) ...[
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                error!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ElevatedButton(
              child: const Text("Switch Direct Deposit"),
              onPressed: () async {
                _log("Button pressed");
                if (API_SECRET.isEmpty) {
                  setState(() {
                    error =
                        "Missing PINWHEEL_API_SECRET. Run with --dart-define=PINWHEEL_API_SECRET=...";
                  });
                  _log("Aborting: API secret missing");
                  return;
                }

                setState(() {
                  error = null;
                  isLoading = true;
                });

                try {
                  await handleButtonPress();
                } finally {
                  if (mounted) {
                    setState(() {
                      isLoading = false;
                    });
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BK BNK')),
      body: _buildBody(),
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
    _log("Starting token request flow");
    TokenAttributes attributes = TokenAttributes(
      mode: "sandbox",
      org_name: "BK BNK",
      allocation: Allocation(
        targets: [
          AllocationTarget(
            account_number: "304119574487",
            type: "checking",
            routing_number: "091302966",
            name: "BK BNK Checking",
          ),
        ],
      ),
      skip_exit_survey: false,
      skip_intro_screen: false,
      end_user_id: "my_user_123",
      required_jobs: ["direct_deposit_switch"],
    );
    TokenPayload? payload = await fetchToken(attributes);
    if (!mounted) return;
    if (error != null) {
      _log("Token request error: $error");
      return;
    }
    if (payload == null) {
      setState(() {
        error = "Failed to fetch token";
      });
      _log("Token payload was null");
      return;
    }

    _log("Token received (len=${payload.token.length}). Opening modal.");
    PinwheelLink link = PinwheelLink(
      token: payload.token,
      useSecureOrigin: ENABLE_SECURE_ORIGIN,
      onExit: _onExit,
      onError: _onError,
      onEvent: _onEvent,
      onSuccess: _onSuccess,
      onLogin: _onLogin,
      onLoginAttempt: _onLoginAttempt,
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Container(
          color: Colors.white,
          child: SafeArea(child: link),
        ),
      ),
    );
  }

  Future<TokenPayload?> fetchToken(TokenAttributes attributes) async {
    var body = attributes.toJson();
    var headers = {
      "Content-Type": "application/json",
      "X-API-SECRET": API_SECRET,
      "pinwheel-version": '2023-11-22',
    };
    var url = Uri.parse('https://sandbox.getpinwheel.com/v1/link_tokens');
    _log("POST $url");
    _log(
        "Headers: Content-Type=application/json, pinwheel-version=2023-11-22, X-API-SECRET=(len=${API_SECRET.length})");
    Response? response;
    try {
      response = await http.post(url, headers: headers, body: jsonEncode(body));
    } catch (exception) {
      setState(() {
        error = exception.toString();
      });
    }

    final resp = response;
    if (resp == null) {
      return null;
    }

    if (resp.statusCode == 200) {
      _log("Token request succeeded (200)");
      var endpointResponse = TokenResponse.fromJson(jsonDecode(resp.body));
      return endpointResponse.data;
    } else {
      _log("Token request failed (${resp.statusCode}): ${resp.body}");
      setState(() {
        error = "${resp.statusCode} - Failed to fetch token\n${resp.body}";
      });
    }
  }
}
