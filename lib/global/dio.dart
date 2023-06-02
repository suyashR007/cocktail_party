import 'package:dio/dio.dart';

// ignore: avoid_classes_with_only_static_members
class MyDio {
  static const baseUrl = 'https://www.thecocktaildb.com/api'; //local ip
  static BaseOptions options = BaseOptions(baseUrl: baseUrl);

  static Future<Dio> provideDio() async {
    final Dio dio = Dio(options);
    print("DIO PROVIDED");
    return dio;
  }
}
