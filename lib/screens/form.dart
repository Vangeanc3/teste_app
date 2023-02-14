import 'package:teste_app/components/teste.dart';
import 'package:teste_app/data/teste_inherited.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Formulario extends StatelessWidget {
  Formulario({super.key, required this.testeContext});

  final BuildContext testeContext;

  var titulo = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        key: _formKey,
        appBar: AppBar(
          title: Text("Criar"),
        ),
        body: Center(
          child: Column(
            children: [
              TextFormField(
                controller: titulo,
              ),
              ElevatedButton(
                  onPressed: () {
                    TesteInherited.of(testeContext)
                        .addTeste(Teste(titulo: titulo.text));
                    Navigator.of(context).pop();
                  },
                  child: Text("Adicionar"))
            ],
          ),
        ),
      ),
    );
  }
}
