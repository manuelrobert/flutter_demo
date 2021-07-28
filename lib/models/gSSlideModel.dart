import 'package:flutter/material.dart';

class GSSlide {
  final String imageUrl;
  final String description;

  GSSlide({
    @required this.imageUrl,
    @required this.description,
  });
}

final gSSlideList = [
  GSSlide(
    imageUrl: 'assets/images/image1.jpg',
    description: 'Bringing the fastest solution for your financial emergency needs',
  ),
  GSSlide(
    imageUrl: 'assets/images/image2.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, magna aliqua.Lorem ipsum dolor sit amet, consectetur',
  ),
  GSSlide(
    imageUrl: 'assets/images/image3.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, adipiscing elit, sed do eiusmod tempor incididunt ut',
  ),
];
