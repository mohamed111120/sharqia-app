
import 'package:flutter/material.dart';

import 'features/splash/view/splash_view.dart';

class SharqiaApp extends StatelessWidget {
  const SharqiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: SplashView() ,
    );
  }
}
