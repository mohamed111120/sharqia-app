import 'package:flutter/material.dart';

import 'features/splash/view/splash_view.dart';

void main() {
  runApp(const SharqiaApp());
}

class SharqiaApp extends StatelessWidget {
  const SharqiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:SplashView() ,
    );
  }
}
