class Workout {
  final int id;
  final DateTime dateTime;
  final String name;
  List<WorkoutExercise> exercises;

  Workout({
    required this.id,
    required this.dateTime,
    required this.name,
    required this.exercises,
  });
}

class Exercise {
  final int id;
  final ExerciseType type;

  Exercise({
    required this.id,
    required this.type,
  });
}

class WorkoutExercise {
  final Excercise exercise;
}

class Exercise {
  final int id;
  final String name;
  final ExerciseType type;
}

enum ExerciseType {
  freeWeight,
  bodyWeight,
}
