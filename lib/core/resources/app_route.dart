import 'package:deep_link_practice/features/details/details_screen.dart';
import 'package:deep_link_practice/features/intro/splash_screen.dart';
import 'package:deep_link_practice/features/main/main_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String mainScreen = 'mainScreen';
  static const String detailsScreen = 'detailsScreen';
  static const String splashScreen = 'splashScreen';

  static GoRouter router = GoRouter(
    initialLocation: SplashScreen.routeName,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        name: splashScreen,
        path: SplashScreen.routeName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: mainScreen,
        path: MainScreen.routeName,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        name: detailsScreen,
        path: DetailsScreen.routeName,
        builder: (context, state) => DetailsScreen(
          detailsID: state.pathParameters['detailsID'] ?? '0',
        ),
      ),
    ],
  );
}
