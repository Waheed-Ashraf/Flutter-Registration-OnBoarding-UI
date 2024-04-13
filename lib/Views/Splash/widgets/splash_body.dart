import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Core/utils/assets_data.dart';
import 'package:worktest1/Views/AuthFeature/signing_view/signing_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    navigateToHomeScreen();
  }

  Future<void> navigateToHomeScreen() async {
    await Future.delayed(const Duration(seconds: 6));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SigningView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AssetsData.splashScreenImg,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "تـطويـر الـذات",
            textAlign: TextAlign.center,
            style: AppStyles.styleBold20,
          ),
        ],
      ),
    );
  }
}
