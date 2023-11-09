import 'package:discover_kyrgyz/presention/intro/google_sign_in.dart';
import 'package:discover_kyrgyz/presention/intro/main_view.dart';
import 'package:discover_kyrgyz/presention/intro/sign_up.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const MainView(),
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
      ],
    ),
  ],
);
