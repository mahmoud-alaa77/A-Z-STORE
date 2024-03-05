

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.onTap, required this.fillColor, required this.textColor, required this.categoryTitle});
  final void Function()? onTap;
  final Color fillColor;
  final Color textColor;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:onTap,
        child:AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.symmetric( horizontal: 6.0,vertical: 12),
            child: Center(
              child: Text(
                categoryTitle,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color:textColor ,
                ),
              ),
            )));
  }
}
