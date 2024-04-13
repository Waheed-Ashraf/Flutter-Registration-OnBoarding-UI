import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';

class CustomOnBoardingCard extends StatefulWidget {
  final String cardDescription;
  final String cardImage;

  const CustomOnBoardingCard(
      {super.key, required this.cardDescription, required this.cardImage});

  @override
  State<CustomOnBoardingCard> createState() => _CustomOnBoardingCardState();
}

class _CustomOnBoardingCardState extends State<CustomOnBoardingCard> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        // width: 150,
        // height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: selected ? Colors.transparent : primaryColor,
        ),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.cardImage,
                width: 50,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.cardDescription,
                style: AppStyles.styleMedium16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
