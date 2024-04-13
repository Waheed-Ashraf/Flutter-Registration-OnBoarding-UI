import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {},
            child: const SizedBox(
              width: 90,
              height: 50,
              child: Card(
                elevation: 4,
                child: Icon(FontAwesomeIcons.facebook),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const SizedBox(
              width: 90,
              height: 50,
              child: Card(
                elevation: 4,
                child: Icon(FontAwesomeIcons.apple),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const SizedBox(
              width: 90,
              height: 50,
              child: Card(
                elevation: 4,
                child: Icon(FontAwesomeIcons.google),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
