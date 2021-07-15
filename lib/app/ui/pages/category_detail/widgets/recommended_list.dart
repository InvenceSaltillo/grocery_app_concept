import 'package:flutter/material.dart';

class RecommendedList extends StatelessWidget {
  RecommendedList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> recommendedProduct = [
    {
      'title': 'Santa Clara Leche Deslactosada',
      'price': 30,
      'img': 'lecheStaClara.png'
    },
    {'title': 'Carne molida de pavo', 'price': 142.7, 'img': 'carneMolida.png'},
    {
      'title': 'Árbol Verde Carne Seca Original',
      'price': 49.9,
      'img': 'carneSeca.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: List.generate(recommendedProduct.length, (index) {
          final product = recommendedProduct[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: index == 0 ? Color(0xffEAEAFD) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset('assets/${product['img']}'),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '${double.parse(product['price'].toString()).toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  product['title'],
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
