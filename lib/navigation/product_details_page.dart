import 'package:flutter/material.dart';

class ProductOverviewPage extends StatelessWidget {
  static const String routeName = 'product_overview';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String image = args['image'];
    final String name = args['name'];
    final int reviews = args['reviews'];
    final int price = args['price'];

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // صورة المنتج
            Image.asset(
              image,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            // تفاصيل المنتج
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 22),
                      SizedBox(width: 6),
                      Text(
                        "($reviews Reviews)",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "\$$price",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "This is a detailed description of the product. "
                    "It includes features, material details, and other important information "
                    "to help the customer make a decision.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("$name added to cart")),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
