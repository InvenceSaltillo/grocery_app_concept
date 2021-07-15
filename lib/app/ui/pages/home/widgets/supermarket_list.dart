import 'package:flutter/material.dart';
import 'package:grocery_app_yt/app/ui/pages/home/widgets/supermarket_card.dart';

class SuperMarketList extends StatelessWidget {
  const SuperMarketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 15),
          SuperMarketCard(
            bgColor: Color(0xffFF303A),
            title: 'Soriana',
            subTitle: '1hr o Programada',
            logoAsset: 'assets/soriana-logo.png',
          ),
          SuperMarketCard(
            bgColor: Color(0xff2055C3),
            title: 'Walmart',
            subTitle: '1hr o Programada',
            logoAsset: 'assets/soriana-logo.png',
          ),
          SuperMarketCard(
            bgColor: Color(0xff9CC422),
            title: 'Fresh Market',
            subTitle: '1hr o Programada',
            logoAsset: 'assets/soriana-logo.png',
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
