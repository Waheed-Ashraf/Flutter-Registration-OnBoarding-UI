import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';
import 'package:worktest1/Views/AuthFeature/login_view/login_view.dart';

class AlreadyHaveAccounrWidget extends StatelessWidget {
  const AlreadyHaveAccounrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const LoginView();
            }));
          },
          child: Text('سجل الدخول',
              style: AppStyles.styleSemiBold16.copyWith(color: primaryColor)),
        ),
        const SizedBox(
          width: 8,
        ),
        Text('لديك حساب بالفعل ؟', style: AppStyles.styleMedium18),
      ],
    );
  }
}
