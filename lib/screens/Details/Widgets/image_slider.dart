import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) OnChanged;
  final String image;

  const ImageSlider({super.key, required this.image, required this.OnChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
          onPageChanged: OnChanged,
          itemBuilder: (context, index) {
            return Hero(tag: image, child: Image.asset(image));
          }),
    );
  }
}
