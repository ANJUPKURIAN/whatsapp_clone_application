import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/popup/settings_page.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/state_screen.dart';
import 'package:whatsapp_clone_application/view/splash_screen.dart';


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
     home: SplashScreen(),

      theme: ThemeData(
      primarySwatch:Colors.grey,
     ),

      initialRoute: '/',
      routes: {
        '/ ':(context)=>StateScreen(),
       'SettingsPage' :(context) =>SettingsPage(),
      },
    );
  }
}

