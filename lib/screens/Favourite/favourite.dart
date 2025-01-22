import 'package:e_commerse/screens/constants.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        title: Text('Favourite'),
        centerTitle: true,
      ),
    );
  }
}
