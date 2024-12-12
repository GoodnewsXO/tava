import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tava_web/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyA3Jou39d2w99pjLPUj3zeFP1wRuwM-BLo",
      authDomain: "tava-hq.firebaseapp.com",
      projectId: "tava-hq",
      storageBucket: "tava-hq.firebasestorage.app",
      messagingSenderId: "569920516272",
      appId: "1:569920516272:web:1a373828af04f2baf78b75",
    ),
  );
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
        fontFamily: 'Grandis',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Homepage(),
      routes: {
        '/Homepage': (context) => Homepage(),
      },
    );
  }
}
