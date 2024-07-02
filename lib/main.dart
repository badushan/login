import 'package:flutter/material.dart';
import 'package:loginui/login_ui.dart';
import 'package:loginui/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const LoginUi(),
      routes: {
      '/sign_up': (BuildContext context) => const LoginUi(),
      '/login_ui': (BuildContext context) => const SignUp(),
    },
    
    );
    
  }
}

