import 'package:flutter/material.dart';
import 'package:flutter_ui/auth/ui/LandingScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingScreen(),
    );
  }
}

