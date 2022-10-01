import 'package:flutter/material.dart';
import 'package:flutter_mvc/services/auth_service.dart';
import 'package:flutter_mvc/services/dio_service.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEST'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {

                print(DioService.dio.options.baseUrl);
                AuthService.getData(1);
              },
              child: Text('TEST'))),
    );
  }
}
