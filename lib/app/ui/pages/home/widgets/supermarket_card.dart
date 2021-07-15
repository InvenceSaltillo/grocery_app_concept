import 'package:flutter/material.dart';

class SuperMarketCard extends StatelessWidget {
  const SuperMarketCard({
    Key? key,
    required this.logoAsset,
    required this.title,
    required this.subTitle,
    required this.bgColor,
  }) : super(key: key);

  final String logoAsset, title, subTitle;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 100,
          margin: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Image.asset(logoAsset),
          ),
        ),
        SizedBox(width: 5),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Text(
            subTitle,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
