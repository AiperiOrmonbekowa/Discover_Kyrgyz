import 'package:discover_kyrgyz/presention/home/home_view/home_view.dart';
import 'package:discover_kyrgyz/presention/main/main_view.dart';
import 'package:discover_kyrgyz/presention/signIn/google_sign_in.dart';
import 'package:discover_kyrgyz/presention/signIn/sign_up.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeView(),
      routes: [
        GoRoute(
          path: 'signUp',
          name: 'signUp',
          builder: (context, state) => const SignUp(),
        ),
        GoRoute(
          path: 'googleSignIn',
          name: 'googleSignIn',
          builder: (context, state) => const GoogleSignIn(),
        ),
        GoRoute(
          path: 'main',
          name: 'main',
          builder: (context, state) => const MainView(),
        )
      ],
    ),
  ],
);
