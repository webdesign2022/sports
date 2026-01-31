import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stickman_exercise/main.dart';

void main() {
  testWidgets('Home screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StickmanExerciseApp());

    // Verify that the title is present.
    expect(find.text('火柴人運動挑戰'), findsOneWidget);

    // Verify that some sample exercises are listed.
    expect(find.text('開合跳 (Jumping Jacks)'), findsOneWidget);
    expect(find.text('深蹲 (Squats)'), findsOneWidget);
  });
}
