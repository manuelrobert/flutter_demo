import 'package:flutter/material.dart';

class GSSlideDot extends StatelessWidget {
  bool isActive;
  GSSlideDot(isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 0,
      width: isActive ? 12 : 0,
      decoration: BoxDecoration(
        color: isActive ? Colors.redAccent : Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
