import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final field;
  final value;
  final color;

  DetailCard({this.field, this.value, this.color});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 110,
      width: width * 0.4,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: color == null ? Colors.grey[200] : color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            field,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
