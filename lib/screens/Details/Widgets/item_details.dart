import 'package:e_commerse/models/product_model.dart';
import 'package:e_commerse/screens/constants.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Product product;

  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          product.title,
          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kprimaryColor),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 14,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            product.rate.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      product.review,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Seller: ",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextSpan(
                    text: product.seller,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
