import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final peso_Controller = TextEditingController();
  final altura_Controller = TextEditingController();
  double peso = 0;
  double altura = 0;
  String resposta_IMC = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset("assets/images/logo_home 1.png"),
                ),
                const Text(
                  "Calculadora IMC",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 150),
                  child: Image.asset("assets/images/Vector.png"),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: 450,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 30,
                  ),
                  child: Image.asset("./assets/images/image 2.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 230,
                  ),
                  child: Text(
                    "Peso (kg)",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
                TextField(
                  controller: peso_Controller,
                  // Explicar um possível erro, que o campo não pode aceitar caracteres
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 220,
                  ),
                  child: Text(
                    "Altura (cm)",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
                TextField(
                  controller: altura_Controller,
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: FloatingActionButton(
                    isExtended: true,
                    // Falta inserir algo no onPressed
                    onPressed: () {
                      setState(
                        () {
                          peso = double.parse(
                            peso_Controller.text.isEmpty
                                ? "0"
                                : peso_Controller.text,
                          );

                          altura = double.parse(
                            altura_Controller.text.isEmpty
                                ? "0"
                                : altura_Controller.text,
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
                        },
                      );
                    },
                    backgroundColor: const Color(0xffC1007E),
                    child: const Text(
                      'Calcular',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                const Divider(),
                Text(resposta_IMC.isEmpty ? "" : resposta_IMC),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
