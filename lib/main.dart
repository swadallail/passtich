import 'dart:io';

import 'package:flutter/material.dart';
import 'package:passtich/screens/add_screen.dart';
import 'package:passtich/screens/choose_screen.dart';
import 'package:passtich/screens/delete_screen.dart';
import 'package:passtich/screens/lood_screen.dart';
import 'screens/welcome_screen.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new MyHttpOverrides();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'تأمين كلمات السر',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
         home: WelcomeScreen(),

        routes: {
          WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
          ChooseScreen.screenRoute: (context) => ChooseScreen(),
          AddScreen.screenRoute: (context) => AddScreen(),
          LoodScreen.screenRoute: (context) => LoodScreen(),
          DeleteScreen.screenRoute: (context) => DeleteScreen(),


        });
  }
}
