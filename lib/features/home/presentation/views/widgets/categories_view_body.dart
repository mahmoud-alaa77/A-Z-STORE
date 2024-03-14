import 'package:az_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 12.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0),
        // padding around the grid
        itemCount: categories.length,
        // total number of items
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: .5, color: Colors.black.withOpacity(.3)),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 6.0, vertical: 12),
                  child: Center(
                      child: Column(
                    children: [
                      Image.asset(
                        "assets/images/category_icons/$index.png",
                        width: MediaQuery.of(context).size.width / 5.4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(categories[index], style: Styles.textStyle20),
                    ],
                  ))));
        },
      ),
    );
  }
}
