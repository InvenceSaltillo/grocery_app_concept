import 'package:flutter/material.dart';

class CategoriesProductsList extends StatelessWidget {
  CategoriesProductsList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> categoriesProduct = [
    {'text': 'Verduras', 'img': 'zanahoria.png'},
    {'text': 'Carne', 'img': 'carne.png'},
    {'text': 'Bebidas', 'img': 'bebida.png'},
    {'text': 'Lacteos', 'img': 'leche.png'},
    {'text': 'Carne', 'img': 'carne.png'},
    {'text': 'Bebidas', 'img': 'bebida.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        physics: BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          categoriesProduct.length,
          (index) {
            final category = categoriesProduct[index];
            return Container(
              width: 120,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(27),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/${category['img']}'),
                  Text(
                    category['text'],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
