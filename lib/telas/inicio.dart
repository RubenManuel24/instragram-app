import 'package:app_instagram/search_pleapo.dart';
import 'package:flutter/material.dart';
class HomeInicio extends StatefulWidget {
  HomeInicio({Key? key}) : super(key: key);

  @override
  State<HomeInicio> createState() => _HomeInicioState();
}

class _HomeInicioState extends State<HomeInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 25),
        backgroundColor: Color.fromARGB(255, 200, 17, 233),
        title: 
            Image.asset("imagem/int.png", height: 50,),

        actions: <Widget>[
          IconButton(
            onPressed: (){
               showSearch(context: context, delegate: SearchPleapo());
            }, 
            icon: Icon(Icons.search))
        ],
      ),
      ///body: ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 200, 17, 233),
        fixedColor: Colors.black,
        items: [
          
          BottomNavigationBarItem(
          label: "Início",
          icon: Icon(Icons.home)),

          BottomNavigationBarItem(
          label: "configurações",
          icon: Icon(Icons.confirmation_num)),

          BottomNavigationBarItem(
          label: "Notificações",
          icon: Icon(Icons.notifications))
        ]),
      
    );
  }
}
