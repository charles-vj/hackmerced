import 'package:flutter/material.dart';

class HotelTile extends StatelessWidget {

  final String name;
  final String address;
  final double currentFunds;

  HotelTile({this.name, this.address, this.currentFunds});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: ListTile(
        leading: Container(
          width: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://www.ahstatic.com/photos/a8m7_rsr001_01_p_1024x768.jpg',
              ),
            ),
          ),
        ),
        isThreeLine: true,
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(address),
            Text("Current Funds: Rs $currentFunds")
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
