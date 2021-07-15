import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key, required this.hintText}) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 5.0,
        shadowColor: Colors.black12,
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black38),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          ),
        ),
      ),
    );
  }
}
