import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';

class CustomCircleAvatar extends StatefulWidget {
  final String avatarImage;
  final bool isActive;
  const CustomCircleAvatar(
      {super.key, required this.avatarImage, required this.isActive});

  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return widget.isActive
        ? CircleAvatar(
            radius: 45,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  widget.avatarImage,
                  width: 80,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        : CircleAvatar(
            backgroundColor: primaryColor,
            radius: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                widget.avatarImage,
                width: 80,
                fit: BoxFit.contain,
              ),
            ),
          );
  }
}
