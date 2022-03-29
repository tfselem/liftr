import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String route = "/login";

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator LoginWidget - FRAME
    return Container(
      width: 390,
      height: 844,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(51, 51, 51, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: -512,
            child: Container(
              width: 1443,
              height: 962.3029174804688,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/Background.png'),
                    fit: BoxFit.fitWidth),
              ),
            ),
          ),
          Positioned(
            top: 302,
            left: 31,
            child: SizedBox(
              width: 318,
              height: 97,
              child: Stack(children: const <Widget>[
                Positioned(
                  top: 57,
                  left: 11,
                  child: Text(
                    'start lifting these nuts',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        letterSpacing: 1.25,
                        fontWeight: FontWeight.normal,
                        height: 1.1428571428571428),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Text(
                    'welcome liftr',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 36,
                        letterSpacing: 1.25,
                        fontWeight: FontWeight.normal,
                        height: 0.4444444444444444),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
