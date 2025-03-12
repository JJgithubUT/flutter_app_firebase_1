import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_fbase/firebase_options.dart';
import 'package:flutter_fbase/screens/artist_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi música - Flutter Firebase CRUD',
      home: const ArtistScreen(),
    );
  }
}
