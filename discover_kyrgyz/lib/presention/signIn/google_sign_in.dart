import 'package:discover_kyrgyz/presention/signIn/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google sign in'),
        centerTitle: true,
      ),
    );
  }
}
