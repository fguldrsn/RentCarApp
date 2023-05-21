import 'package:flutter/material.dart';
import 'cars_overview.dart';

class Baslangic extends StatelessWidget {
  const Baslangic({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dursun Ticaret',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.purple,
      ),
      home: CarsOverviewScreen(),
    );
  }
}