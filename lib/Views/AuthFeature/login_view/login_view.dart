import 'package:flutter/material.dart';

import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
              center: Alignment(-.9, .8),
              radius: .8,
              colors: [Colors.blue, Colors.white])),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: LoginViewBody(),
      ),
    );
  }
}
