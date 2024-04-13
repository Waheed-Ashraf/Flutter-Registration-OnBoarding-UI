import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Views/AuthFeature/register_view/widgets/already_have_account_widget.dart';
import 'package:worktest1/Views/AuthFeature/register_view/widgets/register_form.dart';
import 'package:worktest1/Views/AuthFeature/social_media.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16, right: 16, top: MediaQuery.sizeOf(context).height * 0.10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'قم بإنشاء حساب ',
                style: AppStyles.styleBold20,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            RegisterForm(),
            const SizedBox(
              height: 40,
            ),
            const SocialMediaIcon(),
            const SizedBox(
              height: 24,
            ),
            const AlreadyHaveAccounrWidget(),
          ],
        ),
      ),
    );
  }
}
