import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worktest1/Core/utils/app_styles.dart';
import 'package:worktest1/Core/utils/constent_colors.dart';
import 'package:worktest1/Core/widgets/custom_button.dart';
import 'package:worktest1/Views/OnBoarding/widgets/custom_circle_avatar.dart';
import 'package:worktest1/data/DataSource/datat_source.dart';

class WomenAvatar extends StatefulWidget {
  const WomenAvatar({super.key});

  @override
  State<WomenAvatar> createState() => _WomenAvatarState();
}

class _WomenAvatarState extends State<WomenAvatar> {
  String selectedAvatar = womenAvatar[0];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 36),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  FontAwesomeIcons.arrowRight,
                  size: 20,
                ),
              ))
        ],
        title: const Text('أضف صوره شخصية'),
        centerTitle: true,
        titleTextStyle: AppStyles.styleSemiBold18,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: primaryColor,
            radius: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                selectedAvatar,
                width: 80,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: CustomButton(
              text: 'أضف صوره',
              onPressed: () {},
              color: Colors.white,
              withBorder: true,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "إختر أفتار",
            style: AppStyles.styleRegular16,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: menAvatar.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAvatar = womenAvatar[index];
                            currentIndex = index;
                          });
                        },
                        child: CustomCircleAvatar(
                          avatarImage: womenAvatar[index],
                          isActive: currentIndex == index,
                        ));
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomButton(text: "إضافة", onPressed: () {}),
          )
        ],
      ),
    );
  }
}
