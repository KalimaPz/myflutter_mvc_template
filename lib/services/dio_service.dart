import 'package:dio/dio.dart';

class DioService {
  static late Dio dio;
  BaseOptions options = BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    sendTimeout: 5000,
  );
  DioService.init() {
    print('init dio');
    dio = Dio(options);

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: ((options, handler) {
        print('request');
        print(options.path);
        return handler.next(options);
      }),
      onResponse: (Response response, handler) {
        print('response');
        print(response.data);
        handler.next(response);
      },
      onError: (DioError error, handler) {
        if (error.type == DioErrorType.connectTimeout) {
          return handler.reject(error);
        }
      },
    ));
  }
}
