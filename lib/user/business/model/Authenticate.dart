// To parse this JSON data, do
//
//     final authenticate = authenticateFromJson(jsonString);

import 'dart:convert';

Authenticate authenticateFromJson(String str) => Authenticate.fromJson(json.decode(str));

String authenticateToJson(Authenticate data) => json.encode(data.toJson());

class Authenticate {
  String email;
  String password;

  Authenticate({
    required this.email,
    required this.password,
  });

  factory Authenticate.fromJson(Map<String, dynamic> json) => Authenticate(
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };
}
