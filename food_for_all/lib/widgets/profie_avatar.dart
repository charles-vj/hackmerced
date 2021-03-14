import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 134,
            width: 134,
            //color: Colors.red,
          ),
          Positioned(
            top: 0,
            child: Container(
            child: Center(child: Text("A",style: TextStyle(
              fontSize: 80,
              color: Color.fromRGBO(253, 244, 244, 1),
              fontWeight: FontWeight.w400
            ),)),
            height: 134,
            width: 134,
            decoration: BoxDecoration(
            color: Colors.green[500],
            borderRadius: BorderRadius.circular(67)
            ),
        ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: IconButton(
                onPressed: () {},
              icon: Icon(Icons.edit,color: Colors.white70,),
          ),
            ))
        ]
      ),
    );
  }
}
