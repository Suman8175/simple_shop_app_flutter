import 'package:flutter/material.dart';
import 'package:simple_shop_app_flutter/lists_of_dummy_data.dart';
import 'package:simple_shop_app_flutter/products_detail.dart';
import 'package:simple_shop_app_flutter/products_dispaly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String selectedfilter;
  @override
  void initState() {
    super.initState();
    selectedfilter = productData[0]['company'] as String;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 24),
            child: Row(
              children: [
                Text(
                  'Shopping \nApp',
                  style: TextStyle(fontSize: 24),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50)))),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: SizedBox(
              height: 60,
              child: ListView.builder(
                itemExtent: 125,
                scrollDirection: Axis.horizontal,
                itemCount: productData.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  String filter = productData[index]['company'] as String;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedfilter = filter;
                      });
                    },
                    child: Chip(
                      backgroundColor: selectedfilter == filter
                          ? Colors.amber
                          : const Color.fromARGB(222, 237, 235, 235),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 18),
                      labelStyle: const TextStyle(fontSize: 17),
                      label: Text(filter),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 202, 193, 193)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ProductDDetail(
                            product: productData[index],
                          );
                        },
                      ));
                    },
                    child: ProductsDisplay(
                      nameOfProduct: productData[index]['title'] as String,
                      priceOfProduct: productData[index]['price'] as double,
                      imageOfProduct: productData[index]['imageUrl'] as String,
                      backgroundColor: index.isEven
                          ? const Color.fromARGB(255, 231, 236, 240)
                          : const Color.fromARGB(255, 212, 225, 247),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
