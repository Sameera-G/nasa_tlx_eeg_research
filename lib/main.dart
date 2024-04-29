import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nasa_tlx_eeg_research/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Either ensure your Firebase config is automatically applied or manually initialize Firebase as shown below.
  // Manual initialization (not recommended as a first approach):
  await Firebase.initializeApp(
     options: const FirebaseOptions(
       apiKey: "AIzaSyD0JuyMANReqFUAqZMEaxohJ6WTg7xiK8k",
       appId: "1:410947598435:web:421717a9ebbca9ece96056",
       messagingSenderId: "410947598435",
       projectId: "wl-nasa-tlx",
     ),
   );
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}