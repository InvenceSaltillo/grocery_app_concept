import 'package:flutter/material.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/bottom_menu.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/custom_app_bar.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/location_widget.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/search_text_field.dart';

import 'widgets/recommended_list.dart';
import 'widgets/categories_products_list.dart';
import 'widgets/disccounts_list.dart';
import 'widgets/vegetables_list.dart';

class CategoryDetailPage extends StatelessWidget {
  const CategoryDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          ListView(
            children: [
              LocationWidget(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_outlined),
                  ),
                  Text(
                    'Supermercado',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SearchTextField(hintText: 'Buscar en Supermercado'),
              SizedBox(height: 20),
              DisccountsList(),
              SizedBox(height: 20),
              CategoriesProductsList(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Text(
                  'Recomendados',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RecommendedList(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Text(
                  'Verduras',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              VegetablesList(),
              SizedBox(height: 70),
            ],
          ),
          BottomMenu(),
        ],
      ),
    );
  }
}
