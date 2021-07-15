import 'package:flutter/material.dart';
import 'package:grocery_app_yt/app/ui/pages/category_detail/widgets/suggestions_list.dart';

import 'add_order_button.dart';
import 'add_remove_buttons.dart';

class ProductDetailBottomSheet extends StatelessWidget {
  const ProductDetailBottomSheet({Key? key, required this.product})
      : super(key: key);

  final dynamic product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 120,
              height: 120,
              child: Image.asset(
                'assets/${product['img']}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                width: 12,
                height: 12,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(thickness: 1),
                Text(
                  product['title'],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Información',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Pariatur et ipsum et ad cillum aliquip labore in duis. Eu fugiat do duis quis non pariatur exercitation labore ex id eiusmod sint elit. Cillum fugiat nulla est est commodo et nisi in quis nisi tempor occaecat. Ut fugiat consequat deserunt ea elit culpa occaecat. Id consectetur proident velit eiusmod consectetur elit voluptate duis consectetur fugiat non deserunt ea.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Sugerencias',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                SuggestionsList(),
              ],
            ),
          ),
          SizedBox(height: 10),
          AddRemoveButtons(),
          Spacer(),
          AddOrderButton(),
        ],
      ),
    );
  }
}
