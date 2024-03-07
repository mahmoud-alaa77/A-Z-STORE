

import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.text, this.icon, required this.color, required this.textColor});
  final void Function()? onTap;
  final String text;
  final IconData? icon;
//final double width;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          //width: width,
          height: 80,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadiusDirectional.circular(16),
              border: Border.all(color: Colors.black,width: .2)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,style: Styles.textStyle18.copyWith(color: textColor),),
              const SizedBox(
                width: 4,
              ),
              Icon(icon,color: Colors.white,size: 30,),
            ],

          ),
        ),
      ),
    );
  }
}
