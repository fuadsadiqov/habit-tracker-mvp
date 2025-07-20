import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker_mvp/features/auth/login_screen.dart';
import 'package:habit_tracker_mvp/features/habits/habit_list_screen.dart';
import 'package:habit_tracker_mvp/features/onboarding/onboarding_screen.dart';

GoRouter buildRouter(bool seenOnboarding) {
  return GoRouter(
    initialLocation: seenOnboarding ? '/login' : '/onboarding',
    redirect: (context, state) {
      final isLoggedIn = FirebaseAuth.instance.currentUser != null;
      final isGoingToLogin = state.matchedLocation == '/login';
      final isGoingToOnboarding = state.matchedLocation == '/onboarding';

      if (!seenOnboarding && !isGoingToOnboarding) return '/onboarding';
      if (!isLoggedIn && !isGoingToLogin && !isGoingToOnboarding)
        return '/login';
      if (isLoggedIn && isGoingToLogin) return '/habits';
      return null;
    },
    routes: [
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/habits',
        builder: (context, state) => const HabitListScreen(),
      ),
    ],
  );
}
