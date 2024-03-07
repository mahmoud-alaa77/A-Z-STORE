


import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_icon_button.dart';

class QuantitySection extends StatefulWidget {
  const QuantitySection({super.key});

  @override
  State<QuantitySection> createState() => _QuantitySectionState();
}

class _QuantitySectionState extends State<QuantitySection> {
  int quantity=0;
  int availableQuantity=25;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text(
            "  Quantity",
            style: Styles.textStyle24,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(12),
                    border: Border.all(
                        color: Colors.black,
                        width:.3
                    )
                ),
                child:  Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(iconSize: 30, icon:Icons.remove,onPressed: (){
                      setState(() {
                        if(quantity>0){
                          quantity--;
                          availableQuantity++;
                        }
                      });
                    }, ),
                    Text("$quantity" ,style: Styles.textStyle24,),
                    CustomIconButton(iconSize: 30, icon: Icons.add,onPressed: (){
                      setState(() {
                        if(0<availableQuantity){
                          quantity++;
                          availableQuantity--;
                        }
                      });
                    },),
                  ],
                ),
              ),
              Text("Available quantity ($availableQuantity)",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400),)
            ],
          )
        ],
      ),
    );
  }
}
