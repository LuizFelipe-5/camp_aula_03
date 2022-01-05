import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
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
                const TextField(),
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
                const TextField(),
                const Divider(),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: FloatingActionButton(
                    isExtended: true,
                    // Falta inserir algo no onPressed
                    onPressed: () {},
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
                const Text("Obesidade Grau II (36.70)"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
