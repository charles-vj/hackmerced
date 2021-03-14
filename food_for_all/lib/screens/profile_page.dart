import 'package:flutter/material.dart';
import '../widgets/detail_card.dart';
import '../widgets/profie_avatar.dart';
import '../widgets/profile_detail_widget.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = 'profile-page';

  final String name = "Andrew";
  final String about =
      "This is the about section of profile page here you can write in brief about yourself";
  final String email = "andrew169@hotmail.com";
  final String phone = "+91 8993406969";
  final String address = "Street -3 Navi Mumbai, 100002, Mumbai, Maharashtra";
  final String country = "India";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Info", style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          color: Colors.black,
          iconSize: 35,
          onPressed: () =>  Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.black,
              size: 24,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileAvatar(),
            SizedBox(height: 50),
            ProfileDetailWidget(
              field: "Name",
              value: name,
              icon: Icons.person_outline_outlined,
            ),
            SizedBox(height: 20),
            ProfileDetailWidget(
              field: "Email",
              value: email,
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 20),
            ProfileDetailWidget(
                field: "Phone",
                value: phone,
                icon: Icons.phone_android_outlined),
            SizedBox(height: 20),
            ProfileDetailWidget(
                field: "Country",
                value: country,
                icon: Icons.public_outlined),
            SizedBox(height: 20),
            ProfileDetailWidget(
                field: "Address",
                value: address,
                icon: Icons.home_work_outlined),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailCard(
                  field: "Total Donations",
                  value: "Rs 7349",
                ),
                DetailCard(
                  field: "Social Points",
                  value: "369",
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: Container(
                height: 50,
                width: width,
                margin: EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(
                    "Donation History",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
