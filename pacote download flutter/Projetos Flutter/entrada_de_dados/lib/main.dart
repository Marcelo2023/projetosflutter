import 'package:flutter/material.dart';
import 'package:gasolina_ou_alcool/CampoTexto.dart';
import 'package:gasolina_ou_alcool/EntradaCheckBox.dart';
import 'package:gasolina_ou_alcool/EntradaRadioButton.dart';
import 'package:gasolina_ou_alcool/EntradaSlider.dart';
import 'package:gasolina_ou_alcool/EntradaSwitch.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: CampoTexto(),
    //home: EntradaCheckBox(),
    //home: EntradaRadioButton(),
    //home: EntradaSwitch(),
    home: EntradaSlider(),
  ));
}