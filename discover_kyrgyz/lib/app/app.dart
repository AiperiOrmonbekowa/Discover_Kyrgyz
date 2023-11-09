import 'package:discover_kyrgyz/app/router/go_router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = goRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
