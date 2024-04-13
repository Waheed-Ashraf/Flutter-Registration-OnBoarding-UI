import 'package:flutter/material.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Views/OnBoarding/widgets/custom_onboarding_card.dart';
import 'package:worktest1/data/DataSource/datat_source.dart';

class OnBoardingPageTwo extends StatelessWidget {
  const OnBoardingPageTwo({super.key});

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
              "العادات التي تريد أن تتخلص منها",
              style: AppStyles.styleSemiBold18,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "إختر ما تريد",
              style: AppStyles.styleRegular16,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: loseHabitsCardsList.length,
                  itemBuilder: (context, index) {
                    return CustomOnBoardingCard(
                        cardDescription: loseHabitsCardsList[index].description,
                        cardImage: loseHabitsCardsList[index].image);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
