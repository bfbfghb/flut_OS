import 'dart:io';

import 'package:flut_os/Home/Home.dart';
import 'package:flut_os/Shared/Variaveis.dart';
import 'package:flutter/material.dart';

/*class Menu {
  Verificar(){
    if(){

    }
  }
}*/

class Login extends StatefulWidget {
  static var enviado_por; 
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String verificarPass = "";
  String resposta = "";

  bool _ObscurePass = true;

  var IconToggle = Icons.toggle_on;

    Verificar(){
      if(verificarPass == User.password){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()),);
        print("Senha correta!");
      }
      else{
        print("Senha incorreta!");
        setState(() {
          resposta = "Senha incorreta!";
        });
      }
    }

    ObscureFunc(){
      if(_ObscurePass == false){
        setState(() {
          _ObscurePass = true;
          IconToggle = Icons.toggle_on;
        });
      }
      else if(_ObscurePass == true){
        setState(() {
          _ObscurePass = false;
          IconToggle = Icons.toggle_off;
        });
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StackLogin(),
        bottomNavigationBar: ElevatedButton.icon(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Wallpaper()),);
          Login.enviado_por = "logar";
        }, icon: Icon(Icons.menu), label: Text("Wallpapers")),
    );
  }
  StackLogin(){
    return Stack(children: <Widget>[
      new Image.asset(Variaveis.ImageBackground, height: double.infinity, width: double.infinity, fit: BoxFit.fill,),
      Positioned(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(User.name, style: TextStyle(fontSize: 50),),
            SizedBox(height: 50),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    width: 150,
                    child: TextField(
                      onChanged: (String value){verificarPass = value;},
                      obscureText: _ObscurePass,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                    IconButton(onPressed: ObscureFunc, icon: Icon(IconToggle)),
                  ],
                ),
              ),
            ),
            Text(resposta),
            SizedBox(height: 15),
            Container(width: 150, child: ElevatedButton(onPressed: Verificar, child: Text("Logar"))),
            // SizedBox(height: 30),
            // Container(width: 150, child: ElevatedButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register()),);}, child: Text("Registrar"))),
          ],
        ),
      ),
    ]);
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name = "";

  String password = "";

  String password2 = "";

  String resposta = "";
  bool mostrar = false;

  registrar(){
    if(password == "" || name == "" || password2 == ""){
      setState(() {
        resposta = "Preencha todos os campos!";
      });
    }
    else if(password == "" && name == "" && password2 == ""){
      setState(() {
        resposta = "Preencha todos os campos!";
      }); 
    }
    else{
      if(password == password2){
        User.name = name;
        User.password = password;
        User.newUser = false;
        Variaveis.save.save();
        sleep(Duration(seconds: 2));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()),); 
      }
      else{
        setState(() {
          resposta = "As senhas não coincidem";
        });
      }
    }
  }

  ObscureFunc(){
    if(mostrar == false){
      setState(() {
        mostrar = true;
      });
    }
    else if(mostrar == true){
      setState(() {
        mostrar = false;        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: IconButton(icon: Icon(Icons.keyboard_backspace), onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()),);},),
      //theme: ThemeData.dark(),
      body: StackRegister()
    );
  }
  StackRegister(){
    return Stack(children: <Widget>[
      new Image.asset(Variaveis.ImageBackground, height: double.infinity, width: double.infinity, fit: BoxFit.fill,),
        Positioned(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("UserName", style: TextStyle(fontSize: 25),),
            Center(
              child: Container(
                width: 250,
                child: TextField(
                  onChanged: (String value){name = value;},
                  onSubmitted: (String value){name = value;},
                  maxLength: 16,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text("PassWord", style: TextStyle(fontSize: 15),),
            Center(
              child: Container(
                width: 250,
                child: TextField(
                  onChanged: (String value){password = value;},
                  onSubmitted: (String value){password = value;},
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                  obscureText: mostrar,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text("Conf-PassWord", style: TextStyle(fontSize: 15),),
            Center(
              child: Container(
                width: 250,
                child: TextField(
                  onChanged: (String value){password2 = value;},
                  onSubmitted: (String value){password2 = value;},
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                  obscureText: mostrar,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 250,
              child: Row(
                children: [
                  Container(
                    width: 125,
                    child: ElevatedButton(onPressed: registrar, child: Text("Registrar-se"))),
                  Container(
                    width: 125,
                    child: ElevatedButton(onPressed: ObscureFunc, child: Text("Mostrar Senha"))),
                ],
              )),
            SizedBox(height: 15),
            Text(resposta),
          ]
        )
      )
    ]);
  }
}