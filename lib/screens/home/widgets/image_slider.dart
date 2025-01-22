import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;

  const ImageSlider(
      {super.key, required this.currentSlide, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/shoes.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/slider3.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3, // Adjust number to match the number of images
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: currentSlide == index ? 15.0 : 8.0,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
