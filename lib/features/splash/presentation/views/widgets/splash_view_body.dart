import 'package:az_store/core/utils/app_router.dart';
import 'package:az_store/core/utils/constants.dart';
import 'package:az_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(AppRouter.kOnBoardingView);
    });    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(kLogoPath,width: MediaQuery.of(context).size.width* .8,),
        const SizedBox(
      height: 12,
        ),
         Text(
      "Explore the future of shopping\nwith our online store!",style: Styles.textStyle18.copyWith(
            shadows: [
            Shadow(
            offset: const Offset(2.0, 2.0),
          blurRadius: 1.5,
          color: kPrimaryColor.withOpacity(.5),

        ),],
           fontWeight: FontWeight.w300
        ),
      textAlign:TextAlign.center ,

        )
      ],
      ),
    );
  }
}
