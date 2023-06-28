// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  int? status;
  String? message;
  String? token;
  User? user;

  LoginModel({
    this.status,
    this.message,
    this.token,
    this.user,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"],
    message: json["message"],
    token: json["token"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "token": token,
    "user": user?.toJson(),
  };
}

class User {
  int? id;
  String? name;
  dynamic address;
  String? contactNumber;
  int? isRegistered;
  int? storeId;
  String? type;
  String? username;
  String? priceType;

  User({
    this.id,
    this.name,
    this.address,
    this.contactNumber,
    this.isRegistered,
    this.storeId,
    this.type,
    this.username,
    this.priceType,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    address: json["address"],
    contactNumber: json["contact_number"],
    isRegistered: json["is_registered"],
    storeId: json["store_id"],
    type: json["type"],
    username: json["username"],
    priceType: json["price_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "address": address,
    "contact_number": contactNumber,
    "is_registered": isRegistered,
    "store_id": storeId,
    "type": type,
    "username": username,
    "price_type": priceType,
  };
}
