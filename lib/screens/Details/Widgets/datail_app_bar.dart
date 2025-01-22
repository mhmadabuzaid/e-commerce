import 'package:e_commerse/models/product_model.dart';
import 'package:flutter/material.dart';

import '../../../Providers/favourite_provider.dart';
import '../../constants.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;

  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);

    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: EdgeInsets.all(20),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 30,
            icon: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: EdgeInsets.all(20),
            ),
            onPressed: () {},
            iconSize: 30,
            icon: Icon(Icons.share_outlined),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: EdgeInsets.all(20),
            ),
            onPressed: () {
              provider.toggleFav(product);
            },
            iconSize: 30,
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_outline,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
