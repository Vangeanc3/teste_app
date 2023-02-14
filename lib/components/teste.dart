import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Teste extends StatefulWidget {
  const Teste({super.key, required this.titulo});
  
  final String titulo;

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Container(
        width: 100,
        height: 100,
        color: Colors.black,
        child: Text(widget.titulo, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}