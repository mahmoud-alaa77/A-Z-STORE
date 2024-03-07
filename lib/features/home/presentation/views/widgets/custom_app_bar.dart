import 'package:az_store/core/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
          vertical: 16,horizontal: 12
      ),
      child: Row(
        children: [
          Image.asset(kLogoPath,
            height: 40,
          ),
          const Spacer(),
          const CustomIconButton(iconSize: 35, icon: FontAwesomeIcons.magnifyingGlass),
         Container(
           width: 35,
           height: 35,
           decoration: BoxDecoration(
             borderRadius: BorderRadiusDirectional.circular(12)
           ),
           child: ClipRRect(
               borderRadius: BorderRadiusDirectional.circular(12),
               child: Image.network("https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/242091114_2985289715017504_8076472321968409588_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=dw3MnnlOR-UAX8IxjCH&_nc_ht=scontent.fcai20-3.fna&oh=00_AfC1KoR9JOKOmF1VuT6p5yNJ4dRAfaRPfrwq85B170TJ2w&oe=65EB371B")),
         )
        ],
      ),
    );
  }
}
