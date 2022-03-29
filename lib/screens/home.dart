import 'package:flutter/material.dart';
import 'package:liftr/screens/login.dart';
import 'package:liftr/screens/workout.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "/";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("LIFTR"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.pushNamed(context, WorkoutScreen.route);
            },
            child: const Text(
              "New Empty Workout",
            ),
          ),
        ),
      ),
    );
  }
}
