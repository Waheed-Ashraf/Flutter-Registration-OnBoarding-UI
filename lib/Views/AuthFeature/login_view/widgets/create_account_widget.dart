import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';
import 'package:worktest1/Views/AuthFeature/register_view/register_view.dart';

class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const RegisterView();
            }));
          },
          child: Text('إنشاء حساب',
              style: AppStyles.styleSemiBold16.copyWith(color: primaryColor)),
        ),
        const SizedBox(
          width: 8,
        ),
        Text('ليس لديك حساب ؟', style: AppStyles.styleMedium18),
      ],
    );
  }
}
