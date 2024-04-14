import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';
import 'package:worktest1/Views/Splash/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          //  stops: [.1, .5, .7, .9],
          colors: [primaryColor, Colors.blue, primaryColor])),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SplashBody(),
      ),
    );
  }
}
