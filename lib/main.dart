import 'package:flutter/cupertino.dart';
import 'package:flutter_mvc/services/dio_service.dart';
import 'package:flutter_mvc/services/inject_services.dart';
import 'package:flutter_mvc/views/app.dart';

void main() async {
  injectServices();
  runApp(const App());
}
