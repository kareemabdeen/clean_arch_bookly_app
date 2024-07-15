import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  final baseURl = 'https://www.googleapis.com/books/v1/';
  ApiServices({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await _dio.get('$baseURl$endPoint');
    return response.data;
  }
}
