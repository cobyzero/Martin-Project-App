import 'package:dio/dio.dart';

class DioClient {
  final dio = Dio(BaseOptions(baseUrl: "localhost:80"));
}
