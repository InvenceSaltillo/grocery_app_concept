import 'package:flutter/material.dart';
import 'package:grocery_app_yt/app/ui/global_widgets/promo_card.dart';

class PromosList extends StatelessWidget {
  const PromosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 25),
          PromoCard(
            bgColor: Color(0xff47D17C),
            bgSquareColor: Color(0xff36C46D),
            imgAsset: 'assets/basket.png',
          ),
          SizedBox(width: 10),
          PromoCard(
            bgColor: Color(0xff6C47D1),
            bgSquareColor: Color(0xff6D38C3),
            imgAsset: 'assets/basket.png',
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
