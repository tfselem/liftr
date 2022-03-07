import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  /// Arguments passed from the navigation, can be null or /// include parameters for a workout the user wants to start
  final Map<String, String>? arguments;
  const WorkoutScreen({Key? key, this.arguments}) : super(key: key);

  static const String route = "/workout";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Empty Workout"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 1.0,
              borderOnForeground: true,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            "Barbell Squats",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: PopupMenuButton(
                            icon: const Icon(Icons.more_horiz),
                            itemBuilder: (context) => [
                              const PopupMenuItem(
                                child: ListTile(
                                  title: Text("Delete"),
                                ),
                              )
                            ],
                          )),
                    ]),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Weight",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Sets",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Reps",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                    Row(children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: TextField(),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: TextField(),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: TextField(),
                        ),
                      ),
                    ]),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Add Set"),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
