import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String status;
  final String message;
  final String code;

  const ErrorMessageModel({
    required this.status,
    required this.message,
    required this.code,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        status: json["status"],
        message: json["message"],
        code: json["code"]);
  }

  @override
  List<Object?> get props => [
        status,
        message,
        code,
      ];
}