import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';

class OnBoardingPageThree extends StatelessWidget {
  const OnBoardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16, right: 16, top: MediaQuery.sizeOf(context).height * 0.2),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "إختر جنسك ؟",
              style: AppStyles.styleSemiBold18,
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 150,
              child: GenderCardsRow(),
            ),
          ],
        ),
      ),
    );
  }
}

class GenderCardsRow extends StatefulWidget {
  const GenderCardsRow({super.key});

  @override
  State<GenderCardsRow> createState() => _GenderCardsRowState();
}

class _GenderCardsRowState extends State<GenderCardsRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (isMale == true) {
              } else {
                setState(() {
                  isMale = true;
                });
              }
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: !isMale ? Colors.transparent : primaryColor,
              ),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/man.png",
                      width: 50,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "رجل",
                      style: AppStyles.styleMedium16,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (isMale == true) {
                setState(() {
                  isMale = false;
                });
              } else {}
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: isMale ? Colors.transparent : primaryColor,
              ),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/woman.png",
                      width: 50,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "أنثى",
                      style: AppStyles.styleMedium16,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

bool isMale = true;
