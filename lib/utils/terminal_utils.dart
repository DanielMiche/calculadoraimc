import 'dart:io';

import 'package:calculadora_imc/exception/texto_invalido_exception.dart';

String getTerminalArgumentWithText(String texto) {
  showTextInTerminal(texto);
  String? valor = stdin.readLineSync();
  if (valor == null) {
    throw TextoInvalidoException();
  } else if (valor.isEmpty) {
    throw TextoInvalidoException();
  } else {
    return valor;
  }
}

void showTextInTerminal(String texto) {
  print(texto);
}
