import 'package:e_commerse/models/product_model.dart';
import 'package:e_commerse/screens/home/widgets/home_appBar.dart';
import 'package:e_commerse/screens/home/widgets/image_slider.dart';
import 'package:e_commerse/screens/home/widgets/produc_cart.dart';
import 'package:e_commerse/screens/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectedCatagories = [
      all,
      shoes,
      jewelry,
      womenFashion,
      menFashion,
      beauty
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 35),
                    const CustomeAppBar(),
                    const SizedBox(height: 20),
                    const MySearchBar(),
                    const SizedBox(height: 20),
                    ImageSlider(
                      currentSlide: currentSlider,
                      onChange: (value) {
                        setState(() {
                          currentSlider = value;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoriesList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: selectedIndex == index
                                      ? Colors.blueAccent
                                      : Colors.transparent),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        // Optional for circular images
                                        image: DecorationImage(
                                          image: AssetImage(
                                              categoriesList[index].image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      categoriesList[index].title,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Ensure this widget does not have unbounded height issues
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Special For You",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: selectedCatagories[selectedIndex].length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          product: selectedCatagories[selectedIndex][index],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
