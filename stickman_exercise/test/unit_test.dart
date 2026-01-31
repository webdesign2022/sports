import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stickman_exercise/models/exercise.dart';

void main() {
  group('StickmanPose', () {
    test('lerp correctly interpolates between two poses', () {
      const poseA = StickmanPose(
        leftShoulder: Offset(0, 0),
        rightShoulder: Offset(0, 0),
        leftElbow: Offset(0, 0),
        rightElbow: Offset(0, 0),
        leftHand: Offset(0, 0),
        rightHand: Offset(0, 0),
        leftHip: Offset(0, 0),
        rightHip: Offset(0, 0),
        leftKnee: Offset(0, 0),
        rightKnee: Offset(0, 0),
        leftFoot: Offset(0, 0),
        rightFoot: Offset(0, 0),
      );

      const poseB = StickmanPose(
        leftShoulder: Offset(10, 10),
        rightShoulder: Offset(10, 10),
        leftElbow: Offset(10, 10),
        rightElbow: Offset(10, 10),
        leftHand: Offset(10, 10),
        rightHand: Offset(10, 10),
        leftHip: Offset(10, 10),
        rightHip: Offset(10, 10),
        leftKnee: Offset(10, 10),
        rightKnee: Offset(10, 10),
        leftFoot: Offset(10, 10),
        rightFoot: Offset(10, 10),
      );

      final lerped = StickmanPose.lerp(poseA, poseB, 0.5);

      expect(lerped.leftShoulder, const Offset(5, 5));
      expect(lerped.rightFoot, const Offset(5, 5));
    });
  });

  group('Exercise', () {
    test('sampleExercises contains expected items', () {
      final exercises = Exercise.sampleExercises;
      expect(exercises.length, greaterThanOrEqualTo(2));
      expect(exercises.any((e) => e.id == 'jumping_jacks'), isTrue);
    });
  });
}
