import 'package:flutter/material.dart';
import 'package:taam/services/supabase.service.dart';

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
                SupabaseService.getTodo();
              },
              child: Text('TEST'))),
    );
  }
}
