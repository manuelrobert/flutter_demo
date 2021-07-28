import 'package:flutter/material.dart';
import 'package:final_1/models/gSSlideModel.dart';

class GSSlideWidget extends StatelessWidget {
  final int index;
  GSSlideWidget(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(gSSlideList[index].imageUrl),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          gSSlideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey[900],
            // fontFamily: 'Roboto-Bold',
          ),
        ),
      ],
    );
  }
}
