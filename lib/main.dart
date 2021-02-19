import 'package:flutter/material.dart';
import 'package:calculate/login_page.dart';
import 'package:calculate/home.dart';
import 'package:calculate/hitung_fisika.dart';
import 'package:calculate/konversi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculate',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => Home(),
          '/fisika': (context) => HitungFisika(),
          '/konversi': (context) => Konversi(),
        });
  }
}
