import 'package:flutter/material.dart';
import 'dart:math';

void main() {runApp(MaterialApp(
debugShowCheckedModeBanner: false,
home: HomeStateful(),
));
  
}

class HomeStateful extends StatefulWidget {
  
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _frases = [
    " Laís ",
    " Murilo ",
    " Marcelinho ",
    " Luiza "
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){

      var numeroSorteado = Random().nextInt(_frases.length);
      
      
      setState(() {
        _fraseGerada = _frases[numeroSorteado];
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
        ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(_fraseGerada,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.black
            ),),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}


