import 'package:e_commerse/models/product_model.dart';
import 'package:e_commerse/screens/Details/Widgets/add-cart.dart';
import 'package:e_commerse/screens/Details/Widgets/datail_app_bar.dart';
import 'package:e_commerse/screens/Details/Widgets/desc.dart';
import 'package:e_commerse/screens/Details/Widgets/image_slider.dart';
import 'package:e_commerse/screens/Details/Widgets/item_details.dart';
import 'package:e_commerse/screens/constants.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentSlide = 0;
  int currentColor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      floatingActionButton: Addcart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            DetailAppBar(product: widget.product),
            ImageSlider(
              image: widget.product.image,
              OnChanged: (index) {
                setState(() {
                  currentSlide = index;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                // Added here for scrolling
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemDetails(product: widget.product),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Color",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: List.generate(
                          widget.product.colors.length,
                          (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                currentColor =
                                    index; // Update currentColor when a color is tapped
                              });
                            },
                            child: AnimatedContainer(
                              width: 35,
                              height: 35,
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentColor == index
                                    ? Colors.white
                                    : widget.product.colors[index],
                                border: currentColor == index
                                    ? Border.all(
                                        color: widget.product.colors[index],
                                      )
                                    : null,
                              ),
                              padding: currentColor == index
                                  ? EdgeInsets.all(2)
                                  : null,
                              margin: EdgeInsets.only(right: 10),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: widget.product.colors[index],
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Description(text: widget.product.description),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
