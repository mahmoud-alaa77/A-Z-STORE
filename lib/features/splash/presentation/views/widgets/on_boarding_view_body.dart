import 'package:az_store/core/utils/app_router.dart';
import 'package:az_store/core/utils/constants.dart';
import 'package:az_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'custom_onboarding_image.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var pageDecoration =  PageDecoration(
      titleTextStyle: Styles.textStyle24,
      bodyAlignment: Alignment.center,
      imageFlex: 2,
      pageColor: Colors.grey.withOpacity(.1),

    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      globalHeader:  Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Image.asset(
              kLogoPath,
              width: 50,
            ),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Explore a wide range of products",
          body: onBoardingScreensBody[0],
          image: const OnBoardingImage(image: kOnBoardingImage1,),
          decoration: pageDecoration,

        ),
        PageViewModel(
          title: "Unlock exclusive offers and discounts",
          body: onBoardingScreensBody[1],
          image: const OnBoardingImage(image: kOnBoardingImage2,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Safe and secure payments",
          body: onBoardingScreensBody[2],
          image: const OnBoardingImage(image: kOnBoardingImage3,),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => GoRouter.of(context).push(AppRouter.kHomeView),
      onSkip: () => GoRouter.of(context)
          .push(AppRouter.kHomeView), // You can override onSkip callback
      showSkipButton: true,
      dotsFlex: 0,
      nextFlex: 0,
      skip:  Text(
        "Skip",
        style: Styles.textStyle20.copyWith(color: Colors.white),
      ),
      next: const Icon(
        Icons.arrow_circle_right_outlined,
        color: kPrimaryColor,
        size: 40,
      ),
      done:  Text("Next",
           style: Styles.textStyle20.copyWith(color: Colors.white)),
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.all(4),
      dotsDecorator: getDotsDecorator(),
      dotsContainerDecorator:  const ShapeDecoration(
        color: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      animationDuration: 500,

    );
  }
}

List<String> onBoardingScreensBody=[
  "Explore a wide range of products at your fingertips. A-Z offers an extensive collection to suit your needs.",
  "Get access to limited-time deals and special promotions available only to our valued customers.",
  "A-Z employs industry-leading encryption and trusted payment gateways to safeguard your financial information."
];
DotsDecorator getDotsDecorator() {
  return const DotsDecorator(
    size: Size(10.0, 10.0),
    color: Colors.white,
    activeSize: Size(22.0, 10.0),
    activeColor: kPrimaryColor,
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
    ),
  );
}


