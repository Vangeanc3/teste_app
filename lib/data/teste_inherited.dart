import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:teste_app/components/teste.dart';

class TesteInherited extends InheritedWidget {
  TesteInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Teste> testeList = [
    Teste(titulo: "teste",)  ];

  void addTeste(Teste teste) {
    testeList.add(teste);
  }

  static TesteInherited of(BuildContext context) {
    final TesteInherited? result =
        context.dependOnInheritedWidgetOfExactType<TesteInherited>();
    assert(result != null, 'No TesteInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TesteInherited oldWidget) {
    return oldWidget.testeList.length != testeList.length;
  }
}
