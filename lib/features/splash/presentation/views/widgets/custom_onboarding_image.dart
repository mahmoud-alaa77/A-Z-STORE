
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      width: MediaQuery.of(context).size.width - 100,
      height: MediaQuery.of(context).size.height/3,
    );
  }
}
