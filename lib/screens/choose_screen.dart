import 'package:flutter/material.dart';
import 'package:passtich/screens/delete_screen.dart';
import 'package:passtich/screens/lood_screen.dart';
import 'package:passtich/widgets/my_button.dart';

import 'add_screen.dart';


class ChooseScreen extends StatefulWidget {
  static const String screenRoute = 'chooseScreen';

  const ChooseScreen({Key? key}) : super(key: key);

  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                Text('Password Manger',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'ElMessiri',
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: Colors.blue!,
              title: 'Add Password',
              onPressed: () {
               Navigator.pushNamed(context, AddScreen.screenRoute);
              },
            ),
            MyButton(
              color: Colors.blue!,
              title: 'Restore Password',
              onPressed: () {
                 Navigator.pushNamed(context, LoodScreen.screenRoute);
              },
            ), MyButton(
              color: Colors.blue!,
              title: 'Remove Password',
              onPressed: () {
                 Navigator.pushNamed(context, DeleteScreen.screenRoute);
              },
            ),

          ],
        ),
      ),
    );
  }
}