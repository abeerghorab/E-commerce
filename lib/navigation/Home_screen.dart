import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[45],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.red),
                            hintText: "Find Your Product",
                            hintStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Image.asset("assets/freed.png", height: 70),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      categoryChip("All", true),
                      categoryChip("Category", false),
                      categoryChip("Top", false),
                      categoryChip("Recommended", false),
                    ],
                  ),
                  const SizedBox(height: 25),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        productCard("assets/image1.jpg", "T-Shirt", 55, 300),
                        productCard("assets/image2.jpg", "Jacket", 666, 100),
                        productCard(
                          "assets/image3.jpg",
                          "Child Jacket",
                          323,
                          600,
                        ),
                        productCard("assets/image1.jpg", "T-Shirt", 55, 300),
                        productCard("assets/image4.jpg", "Hooded", 55, 300),
                        productCard("assets/image5.jpg", "shall", 55, 300),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Newest Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 15),

                      productCard("assets/image2.jpg", "Jacket", 200, 150),
                      SizedBox(width: 55),
                      productCard("assets/image1.jpg", "T-Shirt", 120, 80),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      SizedBox(width: 15),

                      productCard(
                        "assets/image3.jpg",
                        "Child Jacket",
                        200,
                        150,
                      ),
                      SizedBox(width: 55),

                      productCard("assets/image5.jpg", "shall", 120, 80),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Category Chip Widget
  Widget categoryChip(String label, bool selected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.grey[300] : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label),
    );
  }

  // Product Card Widget
  Widget productCard(String imagePath, String name, int reviews, int price) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  imagePath,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.favorite_border, color: Colors.red),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: 4),
                    Text("($reviews)"),
                    SizedBox(width: 4),

                    Text(
                      "\$$price",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
