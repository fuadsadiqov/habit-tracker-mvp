import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  Future<void> _completeOnboarding(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seenOnboarding', true);

    if (context.mounted) {
      print(
        "🚀 ~ OnboardingScreen ~ Future<void>_completeOnboarding ~ context.mounted: ${context.mounted}",
      );
      context.pushReplacement('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Habit Tracker"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _completeOnboarding(context);
              },
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
