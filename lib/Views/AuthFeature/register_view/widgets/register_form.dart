// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Core/widgets/custom_button.dart';
import 'package:worktest1/Core/widgets/custom_text_field.dart';
import 'package:worktest1/Views/OnBoarding/onboarding_view.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({
    super.key,
    this.fullName,
    this.email,
    this.password,
    this.confirmPassword,
  });

  String? email;
  String? fullName;
  String? password;
  String? confirmPassword;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
            text: "إسم المستخدم",
            onChanged: (data) {
              widget.fullName = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'أدخل اسم صحيح';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "البريد الإلكتروني",
            onChanged: (data) {
              widget.email = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'أدخل إيميل صحيح';
              } else if (!value.contains('@') || !value.contains('.')) {
                return '@ يجب أن يحتوي الإيميل على';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "كلمة السر",
            isPassword: true,
            onChanged: (data) {
              widget.password = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'أدخل كلمة مرور مناسبة';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "أعد إدخال كلمة السر",
            isPassword: true,
            onChanged: (data) {
              widget.confirmPassword = data;
            },
            validator: (value) {
              if (value != widget.password) {
                return 'كلمة المرور غير متطابقة';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 55,
            child: CustomButton(
                text: 'إنشاء حساب',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const OnBoardingView();
                    }));
                  }
                }),
          )
        ],
      ),
    );
  }
}
