import 'package:flutter/material.dart';

class ProductDDetail extends StatefulWidget {
  final Map<String, Object> product;

  const ProductDDetail({
    super.key,
    required this.product,
  });

  @override
  State<ProductDDetail> createState() => _ProductDDetailState();
}

class _ProductDDetailState extends State<ProductDDetail> {
  late int initialValue;
  @override
  void initState() {
    super.initState();
    initialValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              widget.product['title'] as String,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const Spacer(flex: 1),
          Image.asset(
            widget.product['imageUrl'] as String,
            height: 300,
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 235, 239),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Text(
                  '\$ ${widget.product['price'] as double}',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: (widget.product['sizes'] as List<int>).length,
                      itemBuilder: (context, index) {
                        int stateValue = index;
                        return Padding(
                          padding: const EdgeInsets.only(right: 14, left: 14),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                initialValue = stateValue;
                              });
                            },
                            child: Chip(
                              labelPadding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              backgroundColor: initialValue == stateValue
                                  ? Colors.amber
                                  : null,
                              label: Text(
                                '${(widget.product['sizes'] as List<int>)[index]}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              side: const BorderSide(
                                  color: Colors.grey,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  width: double.infinity,
                  height: 90,
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 40),
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber)),
                      icon: const Icon(Icons.shopping_cart),
                      label: const Text('Add to Cart')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
