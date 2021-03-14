import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final offer;
  final color;

  OfferCard({this.offer,this.color});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.4,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: color == null ? Colors.grey[200] : color,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            offer.title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            offer.description,
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5)),
          ),SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              offer.redeemCode,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.7)),
            ),
          ),
        ],
      ),
    );
  }
}
