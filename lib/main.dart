import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/app_sign_in/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Time tracker",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: SignInPage(),
    );
  }
}
