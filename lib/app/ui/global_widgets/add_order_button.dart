import 'package:flutter/material.dart';

class AddOrderButton extends StatelessWidget {
  const AddOrderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: Color(0xff181F48),
      child: Center(
        child: Text(
          'Agregar al pedido',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
