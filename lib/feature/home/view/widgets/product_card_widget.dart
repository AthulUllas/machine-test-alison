import 'package:alisons_machine_test/feature/home/models/home_api_response_model.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final List<BestSeller> products;

  const ProductCardWidget({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 230,
                  width: 161,
                  child: Image.network(
                    'https://swan.alisonsnewdemo.online/images/product/${product.image}',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.error),
                            Text('Image not found'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text(product.name!),
                Text(
                  "₹ ${product.price}",
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
