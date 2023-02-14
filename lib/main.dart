import 'package:teste_app/data/teste_inherited.dart';
import 'package:teste_app/screens/tela_inicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TesteInherited(child: TelaInicial()),
    );
  }
}
