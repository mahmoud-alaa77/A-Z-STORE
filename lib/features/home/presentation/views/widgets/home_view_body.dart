import 'package:az_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
       CustomOfferWidget(),
      Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 12, vertical: 8),
        child: Text(
          "Categories",
          style: Styles.textStyle24.copyWith(
            shadows: [
              Shadow(
                offset: const Offset(2.0, 3.0),
                blurRadius: 1.5,
                color: Colors.black.withOpacity(.4),
              ),
            ],
          ),
        ),
      ),
      const ListViewOfCategories(),
      const ListOfProduct(),


    ],
  ),
)
      ],
    );
  }
}



