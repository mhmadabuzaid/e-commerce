import 'package:e_commerse/Providers/CartProvider.dart';
import 'package:e_commerse/models/product_model.dart';
import 'package:e_commerse/screens/constants.dart';
import 'package:flutter/material.dart';

class Addcart extends StatefulWidget {
  final Product product;

  const Addcart({super.key, required this.product});

  @override
  State<Addcart> createState() => _AddcartState();
}

class _AddcartState extends State<Addcart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (currentIndex != 1) {
                        setState(() {
                          currentIndex--;
                        });
                      }
                    },
                    iconSize: 18,
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentIndex.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex++;
                      });
                    },
                    iconSize: 18,
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add the product to the cart
                provider.toggleFav(widget
                    .product); // Replace with your actual method to add a product to the cart

                // Show a SnackBar for confirmation
                var snackBar = SnackBar(
                  content: Text(
                    'Successfully Added To Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Add To Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
