import 'package:flutter/material.dart';
import 'utils.dart';
import 'specific_card.dart';
import 'specific_card2.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;


  CarDetail({
    required this.title,
    required this.price,
    required this.color,
    required this.gearbox,
    required this.fuel,
    required this.brand,
    required this.path,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff21254A),
        actions: [
          IconButton(onPressed: null,
              icon: Icon(Icons.bookmark, size: 30,
                color: Theme.of(context).accentColor,)),
          IconButton(onPressed: null,
              icon: Icon(Icons.share, size: 30)),
        ],
      ),
      body: Column(
        children: [
          Text(title, style: MainHeading,),
          Text(brand, style: BasicHeading,),
          Hero(
              tag: title,
              child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                  name: '12 Ay',
                  price: price*120,
                  name2: '₺'),
              SpecificsCard(
                  name: '6 Ay',
                  price: price*60,
                  name2: '₺'),
              SpecificsCard(
                  name: '1 Ay',
                  price: price*30,
                  name2: '₺'),
            ],
          ),
          SizedBox(height: 100,),
          Text('SEÇENEKLER', textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.withOpacity(0.5),
              fontWeight: FontWeight.bold,
              fontSize: 25,),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificCards2(
                name: 'Renk',
                name2: 'Kırmızı',
                name3: 'Beyaz',),
              SpecificCards2(
                name: 'Vites',
                name2: 'Otomatik',
                name3: 'Manuel',),
            ],
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () {
          },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              overlayColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.redAccent;
                  return null;
                },
              ),
            ),
            child: Text('Bu aracı kirala',),)
        ],
      ),
    );
  }
}
