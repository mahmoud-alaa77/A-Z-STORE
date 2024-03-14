import 'package:az_store/core/utils/app_router.dart';
import 'package:az_store/core/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
          vertical: 12,horizontal: 12
      ),
      child: Row(
        children: [
          Image.asset(kLogoPath,
            height: 52,
          ),
          const Spacer(),
           CustomIconButton(iconSize: 40, icon: Icons.search,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          ),
         Container(
           width: 35,
           height: 35,
           decoration: BoxDecoration(
             borderRadius: BorderRadiusDirectional.circular(12)
           ),
           child: ClipRRect(
               borderRadius: BorderRadiusDirectional.circular(12),
               child: Image.network("https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/431165292_3645069129039556_8659542599365434935_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_ohc=mwSsO7f7Ti4AX8xJBlX&_nc_ht=scontent.fcai20-3.fna&oh=00_AfDVkrkU0w24_pG1AJr7x2G3PNwpmi6sAc2yB0Zwm36XJA&oe=65F4B6D0")),
         )
        ],
      ),
    );
  }
}
