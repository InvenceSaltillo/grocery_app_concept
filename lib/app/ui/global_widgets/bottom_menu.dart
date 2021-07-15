import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Align(
          child: Container(
            width: 395,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 5),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/homeIcon.png'),
                  Image.asset(
                    'assets/disccountIcon.png',
                    color: Colors.black26,
                  ),
                  Image.asset(
                    'assets/userIcon.png',
                    color: Colors.black26,
                  ),
                  Container(
                    width: 125,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB02A),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/bagIcon.png'),
                        SizedBox(width: 15),
                        Text('3',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
