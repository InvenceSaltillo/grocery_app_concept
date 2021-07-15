import 'package:flutter/material.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/product_detail_bottomsheet.dart';

class VegetablesList extends StatelessWidget {
  VegetablesList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> vegetables = [
    {
      'title': 'Habanero amarillo por kilos',
      'kgPrice': 55.9,
      'unitPrice': 5.59,
      'img': 'habanero.png',
      'disccount': 20,
    },
    {
      'title': 'Tomate verde',
      'kgPrice': 35.9,
      'unitPrice': 3.59,
      'img': 'tomateVerde.png',
      'disccount': 0,
    },
    {
      'title': 'Nopales',
      'kgPrice': 22.5,
      'unitPrice': 3.15,
      'img': 'nopales.png',
      'disccount': 55,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          vegetables.length,
          (index) {
            final product = vegetables[index];

            return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => ProductDetailBottomSheet(
                          product: product,
                        ));
              },
              child: Container(
                width: 125,
                height: 150,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset('assets/${product['img']}'),
                    ),
                    if (product['disccount'] > 0)
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          width: 44,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0xffFFB02A),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Center(
                            child: Text(
                              '${product['disccount'].toString()}%',
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xff47D17C),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      right: 10,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${product['title']}',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xff80899B),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            Text(
                              '\$${double.parse(product['unitPrice'].toString()).toStringAsFixed(2)}/u-\$${double.parse(product['unitPrice'].toString()).toStringAsFixed(2)}/kg',
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
