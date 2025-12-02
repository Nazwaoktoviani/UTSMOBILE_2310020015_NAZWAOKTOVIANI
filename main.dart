import 'package:flutter/material.dart';

// Import halaman lain agar bisa dipanggil di routing
import 'login_page.dart';
import 'list_page.dart';
import 'detail_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Wisata',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/list': (context) => const ListPage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}