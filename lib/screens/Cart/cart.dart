import 'package:e_commerse/Providers/CartProvider.dart';
import 'package:e_commerse/screens/BottomNavBar.dart';
import 'package:e_commerse/screens/Cart/checkout.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;
    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQtn(index)
                : provider.decrementQtn(index);
          });
        },
        child: Icon(
          icon,
          size: 20,
        ),
      );
    }

    return Scaffold(
      bottomSheet: CheckOutBox(),
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: kcontentColor,
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  },
                  iconSize: 30,
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  'My Cart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Container(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: finalList.length,
                itemBuilder: (context, index) {
                  final cartItem = finalList[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: kcontentColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(cartItem.image),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartItem.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    cartItem.category,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$${cartItem.price}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                finalList.removeAt(index);
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.delete_outlined,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: kcontentColor,
                                border: Border.all(
                                    color: Colors.grey.shade200, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  productQuantity(Icons.add, index),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    cartItem.quantity.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  productQuantity(Icons.remove, index),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      )),
    );
  }
}
