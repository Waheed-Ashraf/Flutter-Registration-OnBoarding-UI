import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';

import 'widgets/signing_view_body.dart';

class SigningView extends StatelessWidget {
  const SigningView({super.key});

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
        body: SigningViewBody(),
      ),
    );
  }
}
