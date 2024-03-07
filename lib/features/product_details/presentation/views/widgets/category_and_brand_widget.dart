import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class CategoryAndBrandWidget extends StatelessWidget {
  const CategoryAndBrandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsetsDirectional.all(8),
            padding:
                const EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadiusDirectional.circular(8),
            ),
            child: Text(
              "Royal_Mirage",
              style: Styles.textStyle14
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.all(0),
            padding:
                const EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: kBlueColor,
              borderRadius: BorderRadiusDirectional.circular(8),
            ),
            child: Text(
              "fragrances",
              style: Styles.textStyle14
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}
