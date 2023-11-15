import 'package:discover_kyrgyz/presention/intro/app_itro.dart';
import 'package:discover_kyrgyz/presention/main/main_view.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const MainView(),
      routes: [
        GoRoute(
          path: 'appIntro',
          name: 'appIntro',
          builder: (context, state) => const AppIntro(),
        ),
      ],
    ),
  ],
);
