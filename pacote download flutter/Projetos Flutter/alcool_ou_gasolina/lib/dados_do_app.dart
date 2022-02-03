import 'package:flutter/material.dart';

class Dados extends StatefulWidget {
  
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  String _textoResultado = '';

  void _calcular(){
    
    double precoAlcool = double.tryParse(_controllerAlcool.text);

    double precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null){
      setState(() {
        _textoResultado = "Número inválido, digite números maiores que 0 e utilizando(.)";
      });
    }else{
      if ((precoAlcool / precoGasolina) >= 0.7){
        setState(() {
          _textoResultado = "Melhor Abastecer com gasolina.";
        });
      }else{
        setState(() {
          _textoResultado = "Melhor abastecer com Álcool";
        });
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(28),
          child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("imagem/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                  "Saiba qual a melhor opção para abastecimento do carro",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Álcool, ex: 1.59"
              ),
              style: TextStyle(
                fontSize: 22,
                color: Colors.black
              ),
              controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: "Preço Gasolina, ex: 3.59"
              ),
              style: TextStyle(
                fontSize: 22,
                color: Colors.black
              ),
              controller: _controllerGasolina,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    fontSize: 20
                  ),),
                onPressed: _calcular
                ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                _textoResultado,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
                ),
              )
          ],
          ),
        ),
      )
    );
  }
}