// ignore_for_file: non_constant_identifier_names
class AllocationTarget {
  String? name;
  String? type;
  String? account_number;
  String? routing_number;

  AllocationTarget({
    this.name,
    this.type,
    this.account_number,
    this.routing_number,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'type': type,
    'account_number': account_number,
    'routing_number': routing_number,
  };
}

class Allocation {
  List<AllocationTarget>? targets;

  Allocation({this.targets});

  Map<String, dynamic> toJson() => {
    'targets': targets?.map((e) => e.toJson()).toList(),
  };
}

class TokenAttributes {
  String? mode;
  String? org_name;
  bool? skip_exit_survey;
  bool? skip_intro_screen;
  String? end_user_id;
  Allocation? allocation;
  List<String>? required_jobs;

  TokenAttributes({
    this.mode,
    this.org_name,
    this.skip_exit_survey,
    this.skip_intro_screen,
    this.end_user_id,
    this.allocation,
    this.required_jobs,
  });

  Map<String, dynamic> toJson() => {
    'mode': mode,
    'org_name': org_name,
    'skip_exit_survey': skip_exit_survey,
    'skip_intro_screen': skip_intro_screen,
    'end_user_id': end_user_id,
    'allocation': allocation?.toJson(),
    'required_jobs': required_jobs,
  };
}

class TokenPayload {
  final String token;
  final String mode;
  final String id;
  final String token_id;

  TokenPayload({
    required this.token,
    required this.mode,
    required this.token_id,
    required this.id,
  });

  factory TokenPayload.fromJson(Map<String, dynamic> json) {
    return TokenPayload(
      token: json['token'],
      mode: json['mode'],
      id: json['id'],
      token_id: json['id'],
    );
  }
}

class TokenResponse {
  final TokenPayload data;

  TokenResponse({required this.data});

  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(data: TokenPayload.fromJson(json['data']));
  }
}
