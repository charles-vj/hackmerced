import 'package:flutter/material.dart';
import 'package:food_for_all/models/hotel.dart';
import 'package:food_for_all/screens/donation_page.dart';
import 'package:food_for_all/screens/hotel_details_screen.dart';
import 'package:food_for_all/screens/profile_page.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HotelsProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => HomeScreen(),
          ProfilePage.routeName: (context) => ProfilePage(),
          HotelDetailsScreen.routeName: (context) => HotelDetailsScreen(),
          DonationsPage.routeName: (context) => DonationsPage(),
        },
      ),
    );
  }
}
