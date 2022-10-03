import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  String? name;
  String? key;
  static late SupabaseClient client;

  SupabaseService.init() {
    String supabaseUrl = dotenv.env['supabaseUrl']!;
    String supabaseUKey = dotenv.env['supabaseKey']!;
    client = SupabaseClient(supabaseUrl, supabaseUKey);
  }

  static getTodo() async {
    print(client.supabaseKey);
    print(client.supabaseUrl);
    final res = await client.from('todo').select('').execute();
    print(res.status);
  }
}
