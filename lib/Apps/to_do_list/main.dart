
import 'package:flut_os/Home/Home.dart';
import 'package:flutter/material.dart';
import 'Variaveis.dart';
import 'Principal_Page.dart';

void main() => runApp(MaterialApp(
      title: Principal.title,
      home: LoadPage(),
));

class LoadPage extends StatefulWidget {

  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  double valor = 0;
  // @override
  // void initState() {
  //   //update();
  //   // Variaveis.save.load();
  //   // sleep(Duration(seconds: 1));
  //   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Principal()),); 
  //   super.initState();
  // }
  update() async{
    for (var i = 0; i < 100; i++) {
      valor;
    }
    Variaveis.save.load();
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Principal()),); 
  }
  @override
  Widget build(BuildContext context) {
    update();
        return MaterialApp(
          home: Scaffold(
            body: Stack(
              children: [
                Home(),
                Padding(
                  padding: const EdgeInsets.all(150.0),
                  child: Container(
                    width: 450,
                    height: 450,
                    color: Colors.white,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: valor,
          ),
        ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}