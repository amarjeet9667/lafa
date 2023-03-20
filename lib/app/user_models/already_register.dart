// To parse this JSON data, do
//
//     final alreadyRegister = alreadyRegisterFromJson(jsonString);

import 'dart:convert';

AlreadyRegister alreadyRegisterFromJson(String str) =>
    AlreadyRegister.fromJson(json.decode(str));

String alreadyRegisterToJson(AlreadyRegister data) =>
    json.encode(data.toJson());

class AlreadyRegister {
  AlreadyRegister({
    required this.status,
    required this.message,
  });

  bool status;
  Message message;

  factory AlreadyRegister.fromJson(Map<String, dynamic> json) =>
      AlreadyRegister(
        status: json["status"],
        message: Message.fromJson(json["message"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message.toJson(),
      };
}

class Message {
  Message({
    required this.phone,
  });

  List<String> phone;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        phone: List<String>.from(json["phone"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "phone": List<dynamic>.from(phone.map((x) => x)),
      };
}
