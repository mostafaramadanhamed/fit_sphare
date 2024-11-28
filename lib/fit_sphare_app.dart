import 'package:flutter/material.dart';

class FitSphareApp extends StatelessWidget {
  const FitSphareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("FitSphere"),
        ),
      ),
    );
  }
}
