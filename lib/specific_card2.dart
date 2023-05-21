import 'package:flutter/material.dart';
import 'utils.dart';

class SpecificCards2 extends StatelessWidget {
  final String name;
  final String name2;
  final String name3;


  SpecificCards2({
    required this.name, required this.name2, required this.name3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height:100,
      width: 120,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          SizedBox(height: 2,),
          Text(name, style: BasicHeading,),
          SizedBox(height: 10,),
          Text(name2, style: SubHeading,),
          SizedBox(height: 2,),
          Text(name3, style: SubHeading,),
        ],
      ),
    );
  }
}
