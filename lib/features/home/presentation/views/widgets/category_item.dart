

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.onTap, required this.fillColor, required this.textColor, required this.categoryTitle, required this.categoryIcon});
  final void Function()? onTap;
  final Color fillColor;
  final Color textColor;
  final String categoryTitle;
  final String categoryIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:onTap,
        child:Container(

            decoration: BoxDecoration(
              border: Border.all(
                width: .5,
                color: Colors.black.withOpacity(.3)
              ),
              color: fillColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.symmetric( horizontal: 6.0,vertical: 12),
            child: Center(
              child: Column(
                children: [
                  Image.asset(categoryIcon,width: 30,),
                  Text(
                    categoryTitle,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color:textColor ,
                    ),
                  ),
                ],
              )
            )));
  }
}
