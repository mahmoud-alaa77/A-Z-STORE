
import 'package:az_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants.dart';
import 'category_item.dart';

class ListViewOfCategories extends StatelessWidget {
  const ListViewOfCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CategoryItem(
            fillColor: Colors.white,
            textColor:  Colors.black,
            categoryTitle: categories[index],
            categoryIcon:"assets/images/category_icons/$index.png" ,
            onTap: (){
              GoRouter.of(context).push(AppRouter.kProductsView,extra:categories[index]);
            },
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}






