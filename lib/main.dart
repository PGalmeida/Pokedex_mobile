import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'package:pokedex/firebase_options.dart';
import 'package:pokedex/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCyX4_QFNK5C2K93TGIZ5uFQPehOdzG4wk",
        authDomain: "pokedex-app-d65f2.firebaseapp.com",
        projectId: "pokedex-app-d65f2",
        storageBucket: "pokedex-app-d65f2.firebasestorage.app",
        messagingSenderId: "831598768514",
        appId: "1:831598768514:web:192dbe0418f2a428ae5f9b"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
