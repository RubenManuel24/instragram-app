import 'package:app_instagram/telas/inicio.dart';
import 'package:flutter/material.dart';
class HomeInsta extends StatefulWidget {
  HomeInsta({Key? key}) : super(key: key);

  @override
  State<HomeInsta> createState() => _HomeInstaState();
}

class _HomeInstaState extends State<HomeInsta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 200, 17, 233),
        title: 
            Image.asset("imagem/int.png", height: 50,),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
           Padding(padding: EdgeInsets.all( 5), child: Image.asset("imagem/albo.jpg", height: 150,),),
           Padding(padding: EdgeInsets.only(top: 1), child: Image.asset("imagem/center.png", height:300, ),),
           Padding(padding: EdgeInsets.only(top: 18), child: TextButton(
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: ((context) => HomeInicio()))
              );
            }, 
            child: Text("Entrar",style: TextStyle( color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold,),  
                ),
                style: TextButton.styleFrom(backgroundColor:Color.fromARGB(255, 200, 17, 233)),
                )),
           
          ],
        ),
      ),

    );
  }
}
