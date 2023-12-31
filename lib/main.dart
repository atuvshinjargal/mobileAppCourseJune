import 'package:flutter/material.dart';
import 'package:profile_app/deep_tree.dart';
import 'package:profile_app/ecommerce_screen.dart';
import 'package:profile_app/flex_screen.dart';
import 'package:profile_app/login_screen.dart';
import 'package:profile_app/profile_screen.dart';
import 'package:profile_app/stopwatch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
      ),
      // home: LoginScreen(),
      routes: {
        '/': (context) => LoginScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        StopWatch.route: (context) => StopWatch(
              // name: 'ner',
              // email: 'mail',
            ),
      },
      //StopWatch(),
      //ECommerceScreen(),//DeepTree(),//ProfileScreen(),//FlexScreen(),
    );
  }
}
