// ignore_for_file: non_constant_identifier_names
class TokenAttributes {
  String? account_number;
  String? account_type;
  String? job;
  String? mode;
  String? org_name;
  String? routing_number;
  bool? skip_exit_survey;
  bool? skip_intro_screen;

  TokenAttributes({
    this.account_number,
    this.account_type,
    this.job,
    this.mode,
    this.org_name,
    this.routing_number,
    this.skip_exit_survey,
    this.skip_intro_screen
  });

  Map<String, dynamic> toJson() => {
    'account_number': account_number,
    'account_type': account_type,
    'job': job,
    'mode': mode,
    'org_name': org_name,
    'routing_number': routing_number,
    'skip_exit_survey': skip_exit_survey,
    'skip_intro_screen': skip_intro_screen,
  };
}

class TokenPayload {
  final String token;
  final String mode;
  final String id;
  final String token_id;
  final int expires;

  TokenPayload({
    required this.token,
    required this.mode,
    required this.token_id,
    required this.id,
    required this.expires
  });

  factory TokenPayload.fromJson(Map<String, dynamic> json) {
    return TokenPayload(
      token: json['token'],
      mode: json['mode'],
      id: json['id'],
      token_id: json['token_id'],
      expires: json['expires']
    );
  }
}

class TokenResponse {
  final TokenPayload data;

  TokenResponse({
    required this.data
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(
      data: TokenPayload.fromJson(json['data']),
    );
  }
}
