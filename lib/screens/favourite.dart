import 'package:e_commerse/Providers/favourite_provider.dart';
import 'package:e_commerse/screens/constants.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    final finalList = provider.favourite;

    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        backgroundColor: kcontentColor,
        title: Text('Favourite'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: finalList.length,
                itemBuilder: (context, index) {
                  final favouriteItem = finalList[index];
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
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 85,
                                width: 85,
                                decoration: BoxDecoration(
                                  color: kcontentColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(favouriteItem.image),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favouriteItem.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    favouriteItem.category,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$${favouriteItem.price}",
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
                        top: 40,
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
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
