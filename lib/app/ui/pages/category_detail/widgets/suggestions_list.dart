import 'package:flutter/material.dart';

class SuggestionsList extends StatelessWidget {
  SuggestionsList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> suggestionsProducts = [
    {'name': 'Brocoli', 'img': 'brocoli.png'},
    {'name': 'Aguacate', 'img': 'aguacate.png'},
    {'name': 'Tomate', 'img': 'tomate.png'},
    {'name': 'Tomate Verde', 'img': 'tomateVerde.png'},
    {'name': 'Nopales', 'img': 'nopales.png'},
    {'name': 'Brocoli', 'img': 'brocoli.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 68,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: suggestionsProducts.length,
        itemBuilder: (_, index) {
          final product = suggestionsProducts[index];

          return Align(
            widthFactor: 1.2,
            child: Container(
              width: 68,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.black12),
              ),
              child: Center(child: Image.asset('assets/${product['img']}')),
            ),
          );
        },
      ),
    );
  }
}
