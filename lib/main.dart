import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app/Views/Screens/BottomNavi_Bar.dart';
import 'firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );



  runApp(

    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),);

  //const MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Retail App",
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent,
      theme: ThemeData(primaryColor: Colors.lightBlue),
      darkTheme: ThemeData(primaryColor: Colors.black54),
      themeMode: ThemeMode.dark,

      home: MainBottomNavBar(),//user == null? LogInSreen() : MainBottomNavBar(),// HomePage(), LogInSreen(),
    );
  }
}
