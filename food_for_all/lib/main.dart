import 'package:flutter/material.dart';
import 'package:food_for_all/screens/hotel_details_screen.dart';
import 'package:food_for_all/screens/profile_page.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HomeScreen(),
        ProfilePage.routeName: (context) => ProfilePage(),
        HotelDetailsScreen.routeName: (context) => HotelDetailsScreen(),
      },
    );
  }
}
