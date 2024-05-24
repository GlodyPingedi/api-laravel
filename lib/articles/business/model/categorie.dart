// To parse this JSON data, do
//
//     final categorie = categorieFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Categorie categorieFromJson(String str) => Categorie.fromJson(json.decode(str));

String categorieToJson(Categorie data) => json.encode(data.toJson());

class Categorie {
  int id;
  String name;
  String content;
  DateTime createdAt;
  DateTime updatedAt;

  Categorie({
    required this.id,
    required this.name,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Categorie.fromJson(Map<String, dynamic> json) => Categorie(
    id: json["id"],
    name: json["name"],
    content: json["content"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "content": content,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
