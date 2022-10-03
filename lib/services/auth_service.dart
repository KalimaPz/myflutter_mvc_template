import 'package:dio/dio.dart';
import 'package:taam/services/dio_service.dart';

class AuthService {
  static getData(int queue) async {
    final Response response = await DioService.dio.get('todos/$queue');
    print(response.data);
  }
}
