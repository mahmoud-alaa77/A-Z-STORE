

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/utils/styles.dart';

class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsetsDirectional.only(
          start: 12,bottom: 8
      ),
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 6,vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(6),
          color: Colors.amber
        ),
        child:   Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Colors.white,

            ),
             Text("4.5",style: Styles.textStyle18.copyWith(color: Colors.white),)
          ],
        ),

      ),












    );
  }
}
