import 'package:movies_app/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException({required this.errorMessageModel});
}

///TODO: This class will be used later
class LocalDataBaseException implements Exception{
  final String message;

  LocalDataBaseException({required this.message});
}