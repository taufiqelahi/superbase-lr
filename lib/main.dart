import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:superbase_learn/pages/home_page.dart';
import 'package:superbase_learn/pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://bseztcjclwoilpdssxbn.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJzZXp0Y2pjbHdvaWxwZHNzeGJuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTUyNzMzNjEsImV4cCI6MjAxMDg0OTM2MX0.cJwCdApJvhBuw-JjXOAjHlJtnpRSx9_yZf107XULZEk',
  );
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Countries',
      home: LoginPage(),
    );
  }
}



