import 'package:flutter/material.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/bottom_menu.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/custom_app_bar.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/location_widget.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/search_text_field.dart';
import 'package:grocery_app_yt/app/ui/pages/home/widgets/categories_grid.dart';

import 'widgets/promos_list.dart';
import 'widgets/supermarket_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                LocationWidget(),
                SearchTextField(hintText: 'Buscar en Markit'),
                CategoriesGrid(),
                PromosList(),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Supermercados',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Ver más',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SuperMarketList(),
                SizedBox(height: 70),
              ],
            ),
          ),
          BottomMenu(),
        ],
      ),
    );
  }
}
