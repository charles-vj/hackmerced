import 'package:flutter/material.dart';

class ProfileDetailWidget extends StatelessWidget {
  final field;
  final value;
  final icon;
  ProfileDetailWidget({this.field, this.value, this.icon});
  Widget _text(text, double opacity, {isBold = false, double size = 16}) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.5, bottom: 2.5),
      child: Text(
          text,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          //softWrap: true,
          style: TextStyle(
              color: Colors.black.withOpacity(opacity),
              fontSize: size,
              fontWeight: isBold ? FontWeight.w600 : FontWeight.w400)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _text(field, 1, isBold: true),
                _text(value, 0.5)
              ],
            ),
          )
        ],
      ),
    );
  }
}
