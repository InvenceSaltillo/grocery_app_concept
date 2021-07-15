import 'dart:math';

import 'package:flutter/material.dart';

import 'disccount_card.dart';

class DisccountsList extends StatelessWidget {
  const DisccountsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 25),
          DisccountCard(
            bgColor: Color(0xff6C47D1),
            bgSquareColor: Color(0xff6D38C3),
            imgAsset: 'assets/disccount.png',
          ),
          SizedBox(width: 10),
          DisccountCard(
            bgColor: Color(0xff47D17C),
            bgSquareColor: Color(0xff36C46D),
            imgAsset: 'assets/disccount.png',
          ),
        ],
      ),
    );
  }
}
