import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';
import 'package:worktest1/Core/widgets/custom_button.dart';
import 'package:worktest1/Core/widgets/custom_text_field.dart';
import 'package:worktest1/Views/OnBoarding/onboarding_view.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? email, password;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          CustomTextField(
            text: 'البريد الإلكتروني',
            onChanged: (data) {
              email = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'يجب إدخال الإيميل';
              } else if (!value.contains('@') || !value.contains('.')) {
                return '@يجب أن يحتوي الإيميل على ';
              }

              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "كلمة المرور",
            isPassword: true,
            onChanged: (data) {
              password = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'يجب إدخال كلمة المرور';
              }

              return null;
            },
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Text('نسيت كلمة المرور ؟',
                    style:
                        AppStyles.styleMedium16.copyWith(color: primaryColor)),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.08,
          ),
          SizedBox(
            height: 55,
            child: CustomButton(
                text: 'تسجيل الخول',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const OnBoardingView();
                    }));
                  }
                }),
          ),
        ],
      ),
    );
  }
}
