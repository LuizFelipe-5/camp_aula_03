import 'package:camp_aula_03/components/textfield_login_component.dart';
import 'package:camp_aula_03/pages/calculator_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC1007E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 76,
                  bottom: 100,
                ),
                child: Image.asset(
                  'assets/images/logo_ioasys_1.png',
                  scale: 1,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 42,
                ),
                child: Text(
                  'Seja bem vindo!',
                  style: TextStyle(
                    fontSize: 37,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 80,
                  bottom: 30,
                ),
                child: Text(
                  'Calculadora IMC',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              TextfieldLoginComponent(
                nome_textField: 'usuário',
                password: false,
              ),
              const Divider(),
              TextfieldLoginComponent(
                nome_textField: 'senha',
                password: true,
              ),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  isExtended: true,
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) =>
                    //         const CalculatorPage(),
                    //   ),
                    // );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CalculatorPage(),
                      ),
                    );
                  },
                  backgroundColor: Colors.black,
                  child: const Text(
                    'ENTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
