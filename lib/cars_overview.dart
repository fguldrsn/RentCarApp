import 'package:flutter/material.dart';
import 'utils.dart';
import 'cars_grid.dart';
import 'login_page.dart';


class CarsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0,
        title: Text('Dursun Ticaret', style: SubHeading),
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
            icon: Icon(Icons.exit_to_app),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Erişilebilir Araçlar',
                style: MainHeading,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarsGrid(),
            )
          ],
        ),),
    );
  }
}

