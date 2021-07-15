import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * .6,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xffF4F8FF),
          borderRadius: BorderRadius.circular(27),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.location_on_outlined, size: 30),
            Text(
              'Refugio Sta Fe 202',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Icon(Icons.expand_more, size: 30),
          ],
        ),
      ),
    );
  }
}
