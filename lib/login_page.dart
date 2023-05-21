import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff21254A),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * .25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/topImage.png")
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('HOŞ GELDİNİZ!', style: TextStyle(fontSize: 30,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  ),
                  customSizedBox(),
                  customSizedBox(),
                  customSizedBox(),
                  TextField(
                    decoration: customInputDecoration("Kullanici Adi"),),
                  customSizedBox(),
                  TextField(
                    decoration: customInputDecoration('Sifre'),
                  ),
                  customSizedBox(),
                  TextButton(onPressed: (){},
                    child: Text('Sifremi Unuttum', style: TextStyle(
                      color: Colors.red,
                    ),
                    ),
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Hesap Oluştur"),),
                  customSizedBox(),
                  Center(
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Baslangic()),
                      );
                    },
                      child: Text('Giris Yap'),
                    ),
                  ),
                  customSizedBox(),

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget customSizedBox()=> SizedBox(
    height: 20,
  );

  InputDecoration customInputDecoration(String hintText){
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    );
  }



}
