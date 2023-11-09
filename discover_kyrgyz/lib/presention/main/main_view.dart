import 'package:discover_kyrgyz/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/image.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Aspen',
              style: TextStyle(
                  fontSize: 100,
                  fontFamily: 'KaushanScript',
                  color: Colors.white,
                  letterSpacing: 3),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 210),
              child: Text(
                'Plan your',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 130),
              child: Text(
                'Luxurios \nVacation',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 6),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            SignInButton(
              text: 'Sign In',
              () => context.go('/signUp'),
            ),
            const SizedBox(
              height: 20,
            ),
            SignInButton(
              text: 'Google sign In',
              () => context.go('/googleSignIn'),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
