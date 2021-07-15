import 'package:flutter/material.dart';
import 'package:grocery_app_yt/app/ui/pages/category_detail/category_detail.dart';

class CategoriesGrid extends StatelessWidget {
  CategoriesGrid({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> categories = [
    {'name': 'Supermercado', 'image': 'category1.png'},
    {'name': 'Farmacia', 'image': 'category2.png'},
    {'name': 'Restaurantes', 'image': 'category3.png'},
    {'name': 'Viajes, Boletos', 'image': 'category4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .37,
      child: GridView(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 25.0,
          childAspectRatio: 1.37,
        ),
        padding: const EdgeInsets.all(25),
        children: List.generate(categories.length, (index) {
          final category = categories[index];
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => CategoryDetailPage()));
            },
            child: Column(
              children: [
                Image.asset('assets/${category['image']}'),
                SizedBox(height: 5),
                Text(category['name']),
              ],
            ),
          );
        }),
      ),
    );
  }
}
