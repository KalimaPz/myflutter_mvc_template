import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:taam/services/supabase.service.dart';
import 'package:taam/views/app.dart';

import 'services/inject_services.dart';

void main() async {
  injectServices();
  await dotenv.load(fileName: '.env.development');
  SupabaseService.init()
    ..key = "1"
    ..name = "2";

  runApp(const App());
}
