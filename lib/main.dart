import 'package:flut_os/Shared/Variaveis.dart';
import 'package:flut_os/menu/menu_iniciar.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp (
    home: LoadMenu(),
    title: Variaveis.title, 
  )
  ); 
}

class LoadMenu extends StatefulWidget {
  const LoadMenu({ Key? key }) : super(key: key);

  @override
  _LoadMenuState createState() => _LoadMenuState();
}

class _LoadMenuState extends State<LoadMenu> {
  String flutos = "Flut_OS";
  update() async{
    Variaveis.save.load();
    await Future.delayed(Duration(seconds: 5));
    if(User.newUser == true){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register()),); 
    }
    if(User.newUser == false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()),);
    }
  }
  @override
  Widget build(BuildContext context) {
    update();
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(flutos, style: TextStyle(fontSize: 50),),
              SizedBox(height: 50,),
              Container(
                width: 50,
                child: CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}