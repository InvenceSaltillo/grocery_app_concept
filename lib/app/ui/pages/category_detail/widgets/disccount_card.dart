import 'dart:math';

import 'package:flutter/material.dart';

class DisccountCard extends StatelessWidget {
  DisccountCard({
    Key? key,
    required this.bgColor,
    required this.bgSquareColor,
    required this.imgAsset,
  }) : super(key: key);

  final Color bgColor, bgSquareColor;
  final String imgAsset;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .87,
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
            right: 10,
            top: -25,
            child: Transform.rotate(
              angle: -pi / 4,
              child: Container(
                width: 141,
                height: 141,
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
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: bgSquareColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
          Positioned(
            right: 45,
            top: -5,
            child: Image.asset(imgAsset),
          ),
          Positioned(
            left: 50,
            top: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '20% DESCUENTO',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'En tu primer pedido',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
