import 'package:flutter/material.dart';
import 'package:passtich/methods/fuction.dart';
import 'package:passtich/screens/choose_screen.dart';
import 'package:passtich/screens/welcome_screen.dart';
import 'package:passtich/widgets/my_button.dart';


class DeleteScreen extends StatefulWidget {
  static const String screenRoute = 'delete_screen';

  const DeleteScreen({Key? key}) : super(key: key);

  @override
  _DeleteScreenState createState() => _DeleteScreenState();
}

class _DeleteScreenState extends State<DeleteScreen> {

  late String url;
  late String userName;

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
               /* Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),*/
                Text('Remove Password',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'ElMessiri',
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                url = value;
              },
              decoration: InputDecoration(
                hintText: 'url',
                hintStyle: TextStyle(fontFamily: 'ElMessiri',),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF128C7E),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                userName = value;
              },
              decoration: InputDecoration(
                hintText: 'username',
                hintStyle: TextStyle(fontFamily: 'ElMessiri',),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF128C7E),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),
            MyButton(
              color: Colors.blue!,
              title: 'Remove',
              onPressed: () async {
                var responseBody =  await Fun().Delete(url,userName);

                if(responseBody == 2) {
                  Navigator.pop(context);
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) =>
                          WelcomeScreen()), (Route<dynamic> route) => false);
                }else {
                  ///////
                }
               // Navigator.pushNamed(context, ChooseScreen.screenRoute);
              },
            ),

          ],
        ),
      ),
    );
  }
}