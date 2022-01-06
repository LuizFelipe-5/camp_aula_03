import 'package:flutter/material.dart';

class CalculatorController {
  final peso_Controller = TextEditingController();
  final altura_Controller = TextEditingController();
  double peso = 0;
  double altura = 0;
  String resposta_IMC = "";

  calcularIMC() {
    peso = double.parse(
      peso_Controller.text.isEmpty ? "0" : peso_Controller.text,
    );

    altura = double.parse(
      altura_Controller.text.isEmpty ? "0" : altura_Controller.text,
    );

    double IMC = (peso * 1000) / ((altura * altura) / 10);

    if (IMC < 18.6) {
      resposta_IMC = 'Você está abaixo do Peso';
    } else if (IMC > 18.6 && IMC < 24.9) {
      resposta_IMC = 'Você está no seu Peso Ideal';
    } else if (IMC > 24.9 && IMC < 29.9) {
      resposta_IMC = 'Você está Levemente acima do Peso';
    } else if (IMC > 29.9 && IMC < 34.9) {
      resposta_IMC = 'Você está com Obesidade Grau I';
    } else if (IMC > 34.9 && IMC < 39.9) {
      resposta_IMC = 'Você está com Obesidade Grau I';
    } else if (IMC > 34.9 && IMC < 39.9) {
      resposta_IMC = 'Você está com Obesidade Grau II';
    } else if (IMC > 39.0) {
      resposta_IMC = 'Você está com Obesidade Grau III';
    } else if (IMC > 50) {
      resposta_IMC = "";
    }
  }
}
