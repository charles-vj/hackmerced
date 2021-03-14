import 'package:flutter/material.dart';

class DonateTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
      ),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        border: InputBorder.none,
        prefixIcon: Container(
          width: 5,
          child: Center(
            child: Text(
              "₹",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        fillColor: Colors.grey[200],
      ),
    );
  }
}
