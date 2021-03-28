// To parse this JSON data, do
//
//     final accountMoviment = accountMovimentFromJson(jsonString);

import 'dart:convert';

import 'package:intl/intl.dart';

AccountMovement accountMovementFromJson(String str) => AccountMovement.fromJson(json.decode(str));

String accountMovementToJson(AccountMovement data) => json.encode(data.toJson());

class AccountMovement {
  AccountMovement({
    this.date,
    this.description,
    this.type,
    this.value,
  });

  String date;
  String description;
  String type;
  double value;

  factory AccountMovement.fromJson(Map<String, dynamic> json) => AccountMovement(
    date: json["date"],
    description: json["description"],
    type: json["type"],
    value: json["value"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "description": description,
    "type": type,
    "value": value,
  };

  DateTime get dateMovement {
    DateFormat format = DateFormat('dd/MM/yyyy');
    return format.parse(date);
  }

  int get daysBetween {
    final date2 = DateTime.now();
    final difference = date2.difference(dateMovement).inDays;
    return difference;
  }

}
