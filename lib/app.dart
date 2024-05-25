import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/veiw_model/home_cubit.dart';
import 'features/splash/view/splash_view.dart';

class SharqiaApp extends StatelessWidget {
  const SharqiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner:  false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white
        ),
        home: SplashView(),
      ),
    );
  }
}
