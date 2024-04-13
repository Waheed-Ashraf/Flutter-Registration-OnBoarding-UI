import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Views/AuthFeature/login_view/widgets/create_account_widget.dart';
import 'package:worktest1/Views/AuthFeature/login_view/widgets/login_form.dart';
import 'package:worktest1/Views/AuthFeature/social_media.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16, right: 16, top: MediaQuery.sizeOf(context).height * 0.1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'قم بتسجيل الخول',
                style: AppStyles.styleBold20,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const LoginForm(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.03,
            ),
            const SizedBox(
              height: 40,
            ),
            const SocialMediaIcon(),
            const SizedBox(
              height: 24,
            ),
            const CreateAccountWidget(),
          ],
        ),
      ),
    );
  }
}
