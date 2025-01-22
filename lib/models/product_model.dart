import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      required this.colors,
      required this.seller,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> products = [
  Product(
    title: "Wireless Headphones",
    description:
        "Experience high-quality sound with these wireless headphones, designed for comfort and durability. Enjoy crystal-clear audio and long-lasting battery life for your music, calls, and more.",
    image: "images/all/wireless.png",
    price: 120,
    seller: "mhmad abuzaid",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronics",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Woman Sweater",
    description:
        "This stylish women's sweater combines comfort and fashion with its soft fabric and elegant design. Perfect for layering or wearing solo during cooler months.",
    image: "images/all/sweet.png",
    price: 120,
    seller: "mhmad abuzaid",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Women Fashion",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Smart Watch",
    description:
        "Track your fitness, stay connected, and manage your schedule with this smart watch. Featuring a sleek design and powerful features, it keeps you on top of your day.",
    image: "images/all/miband.jpg",
    price: 55,
    seller: "mhmad abuzaid",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Men's Jacket",
    description:
        "Stay warm and stylish in this men's jacket. Its modern design and high-quality materials make it perfect for any occasion, from casual outings to winter adventures.",
    image: "images/all/jacket.png",
    price: 155,
    seller: "mhmad abuzaid",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Men Fashion",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Watch",
    description:
        "Elevate your style with this sophisticated watch. Crafted with precision, it adds a touch of elegance to your outfit, suitable for both formal and casual settings.",
    image: "images/men fashion/watch.png",
    price: 1000,
    seller: "mhmad abuzaid",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "MenFashion",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Air Jordan",
    description:
        "Step into comfort and style with these Air Jordan sneakers. Designed for performance and fashion, they provide a perfect blend of support and trendsetting design.",
    image: "images/shoes/Air Jordan.png",
    price: 255,
    seller: "mhmad abuzaid",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Super Perfume",
    description:
        "Indulge in a luxurious fragrance with this premium perfume. A blend of notes that will leave you feeling fresh and confident all day long.",
    image: "images/beauty/perfume.png",
    price: 155,
    seller: "mhmad abuzaid",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Wedding Ring",
    description:
        "Celebrate your love with this beautiful wedding ring, crafted with care and designed to symbolize eternal commitment and elegance.",
    image: "images/jewelry/wedding ring.png",
    price: 155,
    seller: "mhmad abuzaid",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Pants",
    description:
        "These stylish pants offer the perfect balance of comfort and fashion. Ideal for both casual and semi-formal occasions, they fit perfectly and provide ease of movement.",
    image: "images/women fashion/pants.png",
    price: 155,
    seller: "mhmad abuzaid",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<Product> all = [
  Product(
    title: "Wireless Headphones",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/wireless.png",
    price: 120,
    seller: "Tariqul isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronics",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Woman Sweter",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/sweet.png",
    price: 120,
    seller: "Joy Store",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Woman Fashion",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Smart Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/miband.jpg",
    price: 55,
    seller: "Ram Das",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Mens Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/jacket.png",
    price: 155,
    seller: "Jacket Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Men Fashion",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men fashion/watch.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "MenFashion",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Air Jordan",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/Air Jordan.png",
    price: 255,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Super Perfume",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/beauty/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Wedding Ring",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/wedding ring.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "  Pants",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women fashion/pants.png",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
final List<Product> shoes = [
  Product(
    title: "Air Jordan",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/Air Jordan.png",
    price: 255,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Vans Old Skool",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/vans old skool.png",
    price: 300,
    seller: "Mrs Store",
    colors: [
      Colors.blueAccent,
      Colors.blueGrey,
      Colors.green,
    ],
    category: "Shoes",
    review: "(200 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Women-Shoes",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/women-shoes.png",
    price: 500,
    seller: "Shoes Store",
    colors: [
      Colors.red,
      Colors.orange,
      Colors.greenAccent,
    ],
    category: "Shoes",
    review: "(100 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Sports Shoes",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/sports shoes.png",
    price: 155,
    seller: "Hari Store",
    colors: [
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Shoes",
    review: "(60 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "White Sneaker",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/white sneaker.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Shoes",
    review: "(00 Reviews)",
    rate: 0.0,
    quantity: 1,
  ),
];
final List<Product> beauty = [
  Product(
    title: "Face Care Product",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/beauty/face care.png",
    price: 1500,
    seller: "Yojana Seller",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.deepOrangeAccent,
    ],
    category: "Beauty",
    review: "(200 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Super Perfume",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/beauty/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Skin-Care Product",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/beauty/face care.png",
    price: 999,
    seller: "Mr Beast",
    colors: [
      Colors.black12,
      Colors.orange,
      Colors.white38,
    ],
    category: "Beauty",
    review: "(20 Reviews)",
    rate: 4.2,
    quantity: 1,
  ),
];
final List<Product> womenFashion = [
  Product(
    title: " Women Kurta",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women fashion/kurta.png",
    price: 299,
    seller: "Sila Store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    category: "WomenFashion",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Mens Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women fashion/lehenga.png",
    price: 666,
    seller: "My Store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "WomenFashion",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "T-Shert",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women fashion/t-shert.png",
    price: 155,
    seller: "Love Store",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "  Pants",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women fashion/pants.png",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
final List<Product> jewelry = [
  Product(
    title: "Earrings",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/earrings.png",
    price: 3000,
    seller: "Gold Store",
    colors: [
      Colors.amber,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Jewelry",
    review: "(320 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Jewelry-Box",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/jewelry-box.png",
    price: 300,
    seller: "Love Love",
    colors: [
      Colors.pink,
      Colors.orange,
      Colors.redAccent,
    ],
    category: "Jewelry",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Wedding Ring",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/wedding ring.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Necklace-Jewellery",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/necklace-jewellery.png",
    price: 5000,
    seller: "Jewellery Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Jewellery",
    review: "(22 Reviews)",
    rate: 3.5,
    quantity: 1,
  ),
];
final List<Product> menFashion = [
  Product(
    title: "Man Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men fashion/man jacket.png",
    price: 500,
    seller: "Men Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blueGrey,
    ],
    category: "MenFashion",
    review: "(90 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Men Pants",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men fashion/pants.png",
    price: 400,
    seller: "My Store",
    colors: [
      Colors.black54,
      Colors.orange,
      Colors.green,
    ],
    category: "MenFashion",
    review: "(500 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Men Shert",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men fashion/shert.png",
    price: 300,
    seller: "Roman Store",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.green,
    ],
    category: "menFashion",
    review: "(200 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "T-Shirt",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men fashion/t-shirt.png",
    price: 200,
    seller: "Hot Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blue,
    ],
    category: "MenFashion",
    review: "(1k Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men fashion/watch.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "MenFashion",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
