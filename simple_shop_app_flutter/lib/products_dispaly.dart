import 'package:flutter/material.dart';

class ProductsDisplay extends StatelessWidget {
  final String nameOfProduct;
  final double priceOfProduct;
  final String imageOfProduct;
  final Color backgroundColor;

  const ProductsDisplay(
      {super.key,
      required this.nameOfProduct,
      required this.priceOfProduct,
      required this.imageOfProduct,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              nameOfProduct,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              '\$$priceOfProduct',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Image.asset(
              imageOfProduct,
              height: 175,
            ),
          )
        ],
      ),
    );
  }
}
