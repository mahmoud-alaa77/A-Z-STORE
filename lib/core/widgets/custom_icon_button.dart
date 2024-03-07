
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.iconSize, required this.icon, this.color, this.onPressed});
final double iconSize;
final IconData icon;
final Color? color;
final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:onPressed,
        icon:  Icon(
            icon,
            size: iconSize,color: color,
        )

    );
  }
}
