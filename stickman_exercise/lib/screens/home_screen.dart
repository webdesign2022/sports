import 'package:flutter/material.dart';
import '../models/exercise.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exercises = Exercise.sampleExercises;

    return Scaffold(
      appBar: AppBar(
        title: const Text('火柴人運動挑戰'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          final exercise = exercises[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                exercise.name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(exercise.description),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.timer, size: 16, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text('${exercise.durationSeconds} 秒'),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(Icons.play_arrow_rounded, size: 40, color: Colors.blue),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/exercise',
                  arguments: exercise,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
