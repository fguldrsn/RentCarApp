import 'package:flutter/material.dart';
import 'utils.dart';

class SpecificsCard extends StatelessWidget {
  final double price;
  final String name;
  final String name2;

  SpecificsCard({
    required this.price,
    required this.name,
    required this.name2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height:120,
      width: 125,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          SizedBox(height: 2,),
          Text(name, style: BasicHeading,),
          SizedBox(height: 10,),
          Text((price).toString(), style: SubHeading,),
          Text(name2, style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
