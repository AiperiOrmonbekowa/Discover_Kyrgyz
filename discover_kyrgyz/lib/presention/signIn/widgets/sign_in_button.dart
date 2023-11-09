import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton(
    this.onTap, {
    required this.text,
    super.key,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 295,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF176FF2),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
