import 'package:flutter/material.dart';

class StickmanPose {
  final Offset leftShoulder;
  final Offset rightShoulder;
  final Offset leftElbow;
  final Offset rightElbow;
  final Offset leftHand;
  final Offset rightHand;
  final Offset leftHip;
  final Offset rightHip;
  final Offset leftKnee;
  final Offset rightKnee;
  final Offset leftFoot;
  final Offset rightFoot;

  const StickmanPose({
    required this.leftShoulder,
    required this.rightShoulder,
    required this.leftElbow,
    required this.rightElbow,
    required this.leftHand,
    required this.rightHand,
    required this.leftHip,
    required this.rightHip,
    required this.leftKnee,
    required this.rightKnee,
    required this.leftFoot,
    required this.rightFoot,
  });

  static StickmanPose lerp(StickmanPose a, StickmanPose b, double t) {
    return StickmanPose(
      leftShoulder: Offset.lerp(a.leftShoulder, b.leftShoulder, t)!,
      rightShoulder: Offset.lerp(a.rightShoulder, b.rightShoulder, t)!,
      leftElbow: Offset.lerp(a.leftElbow, b.leftElbow, t)!,
      rightElbow: Offset.lerp(a.rightElbow, b.rightElbow, t)!,
      leftHand: Offset.lerp(a.leftHand, b.leftHand, t)!,
      rightHand: Offset.lerp(a.rightHand, b.rightHand, t)!,
      leftHip: Offset.lerp(a.leftHip, b.leftHip, t)!,
      rightHip: Offset.lerp(a.rightHip, b.rightHip, t)!,
      leftKnee: Offset.lerp(a.leftKnee, b.leftKnee, t)!,
      rightKnee: Offset.lerp(a.rightKnee, b.rightKnee, t)!,
      leftFoot: Offset.lerp(a.leftFoot, b.leftFoot, t)!,
      rightFoot: Offset.lerp(a.rightFoot, b.rightFoot, t)!,
    );
  }
}

class Exercise {
  final String id;
  final String name;
  final String description;
  final int durationSeconds;
  final List<StickmanPose> animationPoses;

  const Exercise({
    required this.id,
    required this.name,
    required this.description,
    required this.durationSeconds,
    required this.animationPoses,
  });

  static List<Exercise> get sampleExercises => [
        Exercise(
          id: 'jumping_jacks',
          name: '開合跳 (Jumping Jacks)',
          description: '全身性的有氧運動，能快速提升心率。',
          durationSeconds: 30,
          animationPoses: [
            // Standing
            const StickmanPose(
              leftShoulder: Offset(-20, -60), rightShoulder: Offset(20, -60),
              leftElbow: Offset(-25, -30), rightElbow: Offset(25, -30),
              leftHand: Offset(-30, 0), rightHand: Offset(30, 0),
              leftHip: Offset(-15, 0), rightHip: Offset(15, 0),
              leftKnee: Offset(-15, 40), rightKnee: Offset(15, 40),
              leftFoot: Offset(-15, 80), rightFoot: Offset(15, 80),
            ),
            // X Pose
            const StickmanPose(
              leftShoulder: Offset(-20, -60), rightShoulder: Offset(20, -60),
              leftElbow: Offset(-50, -90), rightElbow: Offset(50, -90),
              leftHand: Offset(-70, -120), rightHand: Offset(70, -120),
              leftHip: Offset(-15, 0), rightHip: Offset(15, 0),
              leftKnee: Offset(-40, 40), rightKnee: Offset(40, 40),
              leftFoot: Offset(-60, 80), rightFoot: Offset(60, 80),
            ),
          ],
        ),
        Exercise(
          id: 'squats',
          name: '深蹲 (Squats)',
          description: '鍛鍊腿部與臀部肌肉的基礎動作。',
          durationSeconds: 45,
          animationPoses: [
            // Standing
            const StickmanPose(
              leftShoulder: Offset(-20, -60), rightShoulder: Offset(20, -60),
              leftElbow: Offset(-25, -30), rightElbow: Offset(25, -30),
              leftHand: Offset(-30, 0), rightHand: Offset(30, 0),
              leftHip: Offset(-15, 0), rightHip: Offset(15, 0),
              leftKnee: Offset(-15, 40), rightKnee: Offset(15, 40),
              leftFoot: Offset(-15, 80), rightFoot: Offset(15, 80),
            ),
            // Squatting
            const StickmanPose(
              leftShoulder: Offset(-20, -20), rightShoulder: Offset(20, -20),
              leftElbow: Offset(-50, -20), rightElbow: Offset(50, -20),
              leftHand: Offset(-80, -20), rightHand: Offset(80, -20),
              leftHip: Offset(-15, 20), rightHip: Offset(15, 20),
              leftKnee: Offset(-50, 40), rightKnee: Offset(50, 40),
              leftFoot: Offset(-15, 80), rightFoot: Offset(15, 80),
            ),
          ],
        ),
      ];
}
