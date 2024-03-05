
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import 'category_item.dart';

class ListViewOfCategories extends StatefulWidget {
  const ListViewOfCategories({super.key});

  @override
  State<ListViewOfCategories> createState() => _ListViewOfCategoriesState();
}

class _ListViewOfCategoriesState extends State<ListViewOfCategories> {

  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CategoryItem(
            fillColor: selectedIndex == index ? kPrimaryColor : Colors.grey.withOpacity(.05),
            textColor: selectedIndex == index ? Colors.white : Colors.black,
            categoryTitle: categories[index],
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}






List<String> categories=[
  "All","Electronics","Clothing","Food and Groceries","Furniture","Jewelry"
];