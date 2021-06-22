import 'dart:math';

import 'package:flut_os/Home/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Widgets/Gesture_Widget.dart';

class Game extends StatefulWidget {
  const Game({ Key? key }) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  List<String> textos = ["","","","","","","","",""];
  var whostart;
  var random = Random();
  String resp = "";
  int oponente = 0; 
  int ganhos = 0;
  int perdas = 0;
  int velha = 0;

  void Verificar() async {
    await Future.delayed(Duration(milliseconds: 500));
    if(textos[0] == "X" && textos[1] == "X" && textos[2] == "X"){
      setState(() {
        resp = "Voce ganhou!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[0] == "X" && textos[3] == "X" && textos[6] == "X"){
      setState(() {
        resp = "Voce ganhou!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[3] == "X" && textos[4] == "X" && textos[5] == "X"){
      setState(() {
        resp = "Voce ganhou!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[3] == "O" && textos[4] == "O" && textos[5] == "O"){
      setState(() {
        resp = "Voce perdeu!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[2] == "X" && textos[5] == "X" && textos[8] == "X"){
      setState(() {
        resp = "Voce ganhou!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[1] == "X" && textos[4] == "X" && textos[7] == "X"){
      setState(() {
        resp = "Voce ganhou!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[0] == "X" && textos[4] == "X" && textos[8] == "X"){
      setState(() {
        resp = "Voce ganhou!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[6] == "X" && textos[7] == "X" && textos[8] == "X"){
      setState(() {
        resp = "Voce ganhou!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[2] == "X" && textos[4] == "X" && textos[6] == "X"){
      setState(() {
        resp = "Voce ganhou!";      
        // ganhos += 1;
      });
        Restart();
    }
    else if(textos[0] == "O" && textos[1] == "O" && textos[2] == "O"){
      setState(() {
        resp = "Voce perdeu!";      
        // perdas++;
      });
        Restart();
    }
    else if(textos[0] == "O" && textos[3] == "O" && textos[6] == "O"){
      setState(() {
        resp = "Voce perdeu!";      
        // perdas++;
      });
        Restart();
    }
    else if(textos[2] == "O" && textos[5] == "O" && textos[8] == "O"){
      setState(() {
        resp = "Voce perdeu!";      
        // perdas++;
      });
        Restart();
    }
    else if(textos[1] == "O" && textos[4] == "O" && textos[7] == "O"){
      setState(() {
        resp = "Voce perdeu!";      
        // perdas++;
      });
        Restart();
    }
    else if(textos[0] == "O" && textos[4] == "O" && textos[8] == "O"){
      setState(() {
        resp = "Voce perdeu!";      
        // perdas++;
      });
        Restart();
    }
    else if(textos[6] == "O" && textos[7] == "O" && textos[8] == "O"){
      setState(() {
        resp = "Voce perdeu!";      
        // perdas++;
      });
        Restart();
    }
    else if(textos[2] == "O" && textos[4] == "O" && textos[6] == "O"){
      setState(() {
        resp = "Voce perdeu!";      
        // perdas++;
      });
        Restart();
    }
    // else{
    //   velha++;
    //   Restart();
    // }
  }

    void Restart() async{
      await Future.delayed(Duration(milliseconds: 500));
      setState(() {
        textos = ["","","","","","","","",""];
        resp = "";
      });
    }

    void oponenteFunc(){
      oponente = random.nextInt(9);
      if(textos[0] == "" || textos[1] == "" || textos[2] == "" || textos[3] == "" || textos[4] == "" || textos[5] == "" || textos[6] == "" || textos[7] == "" || textos[8] == ""){
        while(textos[oponente] != "") {
          oponente = random.nextInt(9);
        }
        if(textos[oponente] == ""){
          setState(() {
            textos[oponente] = "O";
          });
        }
        Verificar();    
      }
    }

    func1() {
      if(textos[0] == ""){ 
        setState((){ 
          textos[0] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
    func2() {
      if(textos[1] == ""){
        setState((){ 
          textos[1] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
    func3() {
      if(textos[2] == ""){
        setState((){ 
          textos[2] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
    func4() {
      if(textos[3] == ""){
        setState((){ 
          textos[3] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
    func5() {
      if(textos[4] == ""){
        setState((){ 
          textos[4] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
    func6() {
      if(textos[5] == ""){
        setState((){ 
          textos[5] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
    func7() {
      if(textos[6] == ""){
        setState((){ 
          textos[6] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
    func8() {
      if(textos[7] == ""){
        setState((){ 
          textos[7] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
    func9() {
      if(textos[8] == ""){
        setState((){ 
          textos[8] = "X";
          oponenteFunc();
          Verificar();
        });
      }
    }
  @override
  void initState() {
      whostart = random.nextInt(2);
      if(whostart == 0){
        oponenteFunc();
        Verificar();
      }
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Home(),
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 50),
            child: Container(
              width: 400,
              height: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppBar(
                    automaticallyImplyLeading: false,
                    title: Center(child: Text("Tic-Tac-Toe")),
                  actions: [
                    IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close, color: Colors.red,)),
                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                    Gesture_Widget(
                      onTap: func1,
                      texto: textos[0].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                    Gesture_Widget(
                      onTap: func2,
                      texto: textos[1].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                    Gesture_Widget(
                      onTap: func3,
                      texto: textos[2].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                  ],),
                  SizedBox(width: 5, height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Gesture_Widget(
                      onTap: func4,
                      texto: textos[3].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                    Gesture_Widget(
                      onTap: func5,
                      texto: textos[4].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                    Gesture_Widget(
                      onTap: func6,
                      texto: textos[5].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                  ]),
                  SizedBox(width: 5, height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Gesture_Widget(
                      onTap: func7,
                      texto: textos[6].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                    Gesture_Widget(
                      onTap: func8,
                      texto: textos[7].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                    Gesture_Widget(
                      onTap: func9,
                      texto: textos[8].toString(),
                    ),
                    SizedBox(width: 5, height: 5,),
                  ]),
                SizedBox(height: 50),
                Center(child: ElevatedButton(onPressed: Restart, child: Text("Restart Game")))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}