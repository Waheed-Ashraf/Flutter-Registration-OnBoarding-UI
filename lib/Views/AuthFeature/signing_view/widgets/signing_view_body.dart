import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:worktest1/Core/utils/assets_data.dart';
import 'package:worktest1/Core/widgets/custom_button.dart';
import 'package:worktest1/Views/AuthFeature/login_view/login_view.dart';
import 'package:worktest1/Views/AuthFeature/register_view/register_view.dart';

class SigningViewBody extends StatelessWidget {
  const SigningViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Spacer(flex: 4),
            SizedBox(
              height: 300,
              child: Lottie.asset(
                AssetsData.launchingScreenImg,
                fit: BoxFit.contain,
              ),
            ),
            const Spacer(flex: 3),
            CustomButton(
              text: 'تسجيل خول',
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const LoginView();
                }));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'إنشاء حساب',
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const RegisterView();
                }));
              },
              withBorder: true,
              color: Colors.white,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
