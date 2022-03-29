import 'package:flutter/material.dart';
import 'package:liftr/screens/home.dart';
import 'package:liftr/screens/login.dart';
import 'package:liftr/screens/workout.dart';
import 'package:liftr/state/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(const Liftr());
}

class Liftr extends StatelessWidget {
  const Liftr({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: MainModel(),
      child: MaterialApp(
        title: 'LIFTR',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            // home screen
            case HomeScreen.route:
              return MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              );
            // Workout Screen
            case WorkoutScreen.route:
              return MaterialPageRoute(
                builder: (context) => const WorkoutScreen(),
              );
            // Workout Screen
            case LoginScreen.route:
              return MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              );
            default:
              return MaterialPageRoute(
                builder: (context) => const WorkoutScreen(),
              );
          }
        },
        initialRoute: HomeScreen.route,
        home: const HomeScreen(),
      ),
    );
  }
}
