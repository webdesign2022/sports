import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/exercise_screen.dart';
import 'screens/summary_screen.dart';
import 'models/exercise.dart';

void main() {
  runApp(const StickmanExerciseApp());
}

class StickmanExerciseApp extends StatelessWidget {
  const StickmanExerciseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '火柴人運動挑戰',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const HomeScreen());
        }
        if (settings.name == '/exercise') {
          final exercise = settings.arguments as Exercise;
          return MaterialPageRoute(
            builder: (context) => ExerciseScreen(exercise: exercise),
          );
        }
        if (settings.name == '/summary') {
          final results = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => SummaryScreen(results: results),
          );
        }
        return null;
      },
    );
  }
}
