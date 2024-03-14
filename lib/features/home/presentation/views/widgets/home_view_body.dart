import 'package:az_store/core/utils/app_router.dart';
import 'package:az_store/core/utils/constants.dart';
import 'package:az_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_app_bar.dart';
import 'custom_offer_widget.dart';
import 'list_of_products.dart';
import 'list_view_of_categories.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
SliverToBoxAdapter(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const CustomAppBar(),
       const CustomOfferWidget(),
      Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 12, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
          "Categories",
          style: Styles.textStyle20.copyWith(
            shadows: [
              Shadow(
                offset: const Offset(2.0, 3.0),
                blurRadius: 1.5,
                color: Colors.black.withOpacity(.1),
              ),
            ],
          ),),
            TextButton(
              onPressed: (){
GoRouter.of(context).push(AppRouter.kCategoriesView);
              },
              child: Text("See all",style: Styles.textStyle16.copyWith(
                  color: kPrimaryColor,
              fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
              decorationColor: kPrimaryColor
                ),

              ),
            )
          ],
        ),
      ),
      const ListViewOfCategories(),
      Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 12, vertical: 6),
        child: Text(
          "Latest Products",
          style: Styles.textStyle20.copyWith(
            shadows: [
              Shadow(
                offset: const Offset(2.0, 3.0),
                blurRadius: 1.5,
                color: Colors.black.withOpacity(.1),
              ),
            ],
          ),),
      ),
      const ListOfProduct(
        shrinkWrapValue: true,
        scrollPhysics: NeverScrollableScrollPhysics(),
      ),


    ],
  ),
)
      ],
    );
  }
}



