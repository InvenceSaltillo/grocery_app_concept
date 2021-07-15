import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Image.asset('assets/menuIcon.png'),
      centerTitle: false,
      title: Image.asset('assets/logo.png'),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 90,
            height: 15,
            decoration: BoxDecoration(
              color: Color(0xff47D17C),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/me.jpg'),
                  ),
                  Text('400'),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Center(
            child: Stack(
              children: [
                Image.asset('assets/notification.png'),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
