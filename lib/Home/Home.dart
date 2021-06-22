import 'package:flut_os/Apps/tic_tac_toe/Game.dart';
import 'package:flut_os/Apps/to_do_list/Principal_Page.dart';
import 'package:flut_os/Apps/to_do_list/main.dart';
import 'package:flut_os/Shared/Variaveis.dart';
import 'package:flut_os/menu/menu_iniciar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  StackIniciar(){
    return Scaffold(
      body: Stack(
        children: [
          new Image.asset(Variaveis.ImageBackground, height: double.infinity, width: double.infinity, fit: BoxFit.fill,),
          Positioned(child: Column(children: [
            Container(
              width: 150,
              height: 150,
              child: Column(
                children: [
                  GestureDetector(
                    child: Image.asset("assets/tictactoe.png", width: 100, height: 100,),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Game()),);
                    },
                  ),
                    Center(child: Text("Tic Tac Toe")),
                ],
              ),
            ),
            Container(
              width: 150,
              height: 150,
              child: Column(
                children: [
                  GestureDetector(
                    child: Image.asset("assets/to_do_list.jpg", width: 100, height: 100,),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoadPage()),);
                    },
                  ),
                    Center(child: Text("To Do List")),
                ],
              ),
            ),
          ],))
        ],
      ),
      bottomNavigationBar: ElevatedButton.icon(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Wallpaper()),);
        Login.enviado_por = "home";
      }, icon: Icon(Icons.menu), label: Text("Menu")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackIniciar(),
    );
  }
}

class Wallpaper extends StatefulWidget {
  const Wallpaper({ Key? key }) : super(key: key);

  @override
  _WallpaperState createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  List wallpapers = ["assets/image.jpg", "assets/wallpaper.jpg", "assets/wallpaper2.jpg", "assets/wallpaper3.jpg"];
    Wallpapers(){
    return Stack(
      children: [
        new Image.asset(Variaveis.ImageBackground, height: double.infinity, width: double.infinity, fit: BoxFit.fill,),
        Positioned(
          child: ListView.builder(itemCount: wallpapers.length, itemBuilder: (context, value){
          return ListTile(
            title:  Container(
              width: 50,
              height: 50,
              child: GestureDetector(
                child: Image.asset(wallpapers[value]),
                onTap: () {
                  setState(() {
                    Variaveis.ImageBackground = wallpapers[value];
                  });
                  Variaveis.save.save();
                },
              ),
            ),
          );
      }),
        ),]
    );
  }

  voltar(){
    if(Login.enviado_por == "logar"){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()),);
    }
    if(Login.enviado_por == "home"){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()),);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(child: Wallpapers()),
        appBar: AppBar(
          actions: [
          IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            voltar();
            },
          ),   
        ]
      ),       
    );
  }
}