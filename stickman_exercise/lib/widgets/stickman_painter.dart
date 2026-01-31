import 'package:flutter/material.dart';
import '../models/exercise.dart';

class StickmanPainter extends CustomPainter {
  final StickmanPose pose;
  final Color color;
  final double strokeWidth;

  StickmanPainter({
    required this.pose,
    this.color = Colors.black,
    this.strokeWidth = 4.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    // Scale factor to make the stickman fit the canvas.
    // Assuming pose coordinates are roughly within -100 to 100.
    final scale = size.shortestSide / 250;

    Offset p(Offset relative) => center + relative * scale;

    // Head
    final shoulderMid = (pose.leftShoulder + pose.rightShoulder) / 2;
    final headCenter = p(shoulderMid + const Offset(0, -30));
    canvas.drawCircle(headCenter, 15 * scale, paint..style = PaintingStyle.stroke);

    // Torso (Neck to Hip Mid)
    final hipMid = (pose.leftHip + pose.rightHip) / 2;
    canvas.drawLine(p(shoulderMid), p(hipMid), paint);

    // Shoulders
    canvas.drawLine(p(pose.leftShoulder), p(pose.rightShoulder), paint);

    // Left Arm
    canvas.drawLine(p(pose.leftShoulder), p(pose.leftElbow), paint);
    canvas.drawLine(p(pose.leftElbow), p(pose.leftHand), paint);

    // Right Arm
    canvas.drawLine(p(pose.rightShoulder), p(pose.rightElbow), paint);
    canvas.drawLine(p(pose.rightElbow), p(pose.rightHand), paint);

    // Hips
    canvas.drawLine(p(pose.leftHip), p(pose.rightHip), paint);

    // Left Leg
    canvas.drawLine(p(pose.leftHip), p(pose.leftKnee), paint);
    canvas.drawLine(p(pose.leftKnee), p(pose.leftFoot), paint);

    // Right Leg
    canvas.drawLine(p(pose.rightHip), p(pose.rightKnee), paint);
    canvas.drawLine(p(pose.rightKnee), p(pose.rightFoot), paint);
  }

  @override
  bool shouldRepaint(covariant StickmanPainter oldDelegate) {
    return oldDelegate.pose != pose || oldDelegate.color != color;
  }
}
