import 'package:flutter/material.dart';

class TextfieldLoginComponent extends StatelessWidget {
  String nome_textField;
  bool password;

  TextfieldLoginComponent({
    Key? key,
    required this.nome_textField,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: nome_textField,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(200),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
