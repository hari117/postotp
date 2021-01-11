// To parse this JSON data, do
//
//     final otp = otpFromJson(jsonString);

import 'dart:convert';

Otp otpFromJson(String str) => Otp.fromJson(json.decode(str));

String otpToJson(Otp data) => json.encode(data.toJson());

class Otp {
  Otp({
    this.status,
    this.otpsessionid,
    this.isuser,
  });

  bool status;
  String otpsessionid;
  bool isuser;

  factory Otp.fromJson(Map<String, dynamic> json) => Otp(
    status: json["status"] == null ? null : json["status"],
    otpsessionid: json["otpsessionid"] == null ? null : json["otpsessionid"],
    isuser: json["Isuser"] == null ? null : json["Isuser"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "otpsessionid": otpsessionid == null ? null : otpsessionid,
    "Isuser": isuser == null ? null : isuser,
  };
}
