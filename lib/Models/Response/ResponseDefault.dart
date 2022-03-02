import 'dart:convert';

ResponseDefault responseDefaultFromJson(String str) =>
    ResponseDefault.fromJson(json.decode(str));

String responseDefaultToJson(ResponseDefault data) =>
    json.encode(data.toJson());

class ResponseDefault {
  bool success;
  String error;

  ResponseDefault({
    required this.success,
    required this.error,
  });

  factory ResponseDefault.fromJson(Map<String, dynamic> json) =>
      ResponseDefault(
        success: json["success"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "error": error,
      };
}
