import 'dart:math';

import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard(
      {Key? key,
      required this.bgColor,
      required this.bgSquareColor,
      required this.imgAsset})
      : super(key: key);

  final Color bgColor, bgSquareColor;
  final String imgAsset;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.87,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            right: 120,
            bottom: -50,
            child: Transform.rotate(
              angle: -pi / 4,
              child: Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: bgSquareColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
          Positioned(
            left: -25,
            top: 10,
            child: Transform.rotate(
              angle: -pi / 4,
              child: Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: bgSquareColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
          Positioned(
            right: 25,
            child: Image.asset(
              imgAsset,
              width: 95,
            ),
          ),
          Positioned(
            left: 50,
            top: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Las mejores entregas\na tu domicilio',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Envío Gratis',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
