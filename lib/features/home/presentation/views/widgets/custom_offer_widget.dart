

import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomOfferWidget extends StatelessWidget {
  const CustomOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height/4
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(24),
              child: Image.network(
                  "https://images.pexels.com/photos/577558/pexels-photo-577558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              opacity: const AlwaysStoppedAnimation(.88),
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Today's offer",
                    style: Styles.textStyle18.copyWith(color: Colors.white,),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(12)),
                    child: AspectRatio(
                      aspectRatio: 8 / 2.5,
                      child: Center(
                          child: Text(
                            "30% OFF",
                            style: Styles.textStyle16.copyWith(color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
