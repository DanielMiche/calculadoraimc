import 'package:calculadora_imc/model/pessoa.dart';
import 'package:calculadora_imc/utils/terminal_utils.dart';
import 'package:calculadora_imc/exception/texto_invalido_exception.dart';

void main(List<String> arguments) {
  String nome = "";
  String peso = "";
  String altura = "";
  showTextInTerminal("Bem vindo a calculadora de IMC!");
  showTextInTerminal(
      "Digite os dados solicitados para que possamos realizar os cálculos.");
  do {
    try {
      nome = getTerminalArgumentWithText("Digite o nome da pessoa:");
    } catch (e) {
      showTextInTerminal(e.toString());
    }
  } while (nome.isEmpty);
  do {
    try {
      peso = getTerminalArgumentWithText("Digite o peso da pessoa (em KG):");
      peso = peso.replaceAll(",", ".");
      peso = double.tryParse(peso).toString();
      if (peso == "null") {
        throw TextoInvalidoException();
      }
    } catch (e) {
      showTextInTerminal(e.toString());
    }
  } while (peso.isEmpty || peso == "null");
  do {
    try {
      altura =
          getTerminalArgumentWithText("Digite a altura da pessoa (em metros):");
      altura = altura.replaceAll(",", ".");
      altura = double.tryParse(altura).toString();
      if (altura == "null") {
        throw TextoInvalidoException();
      }
    } catch (e) {
      showTextInTerminal(e.toString());
    }
  } while (altura.isEmpty || altura == "null");

  Pessoa pessoa = Pessoa(nome, double.parse(peso), double.parse(altura));
  showTextInTerminal(pessoa.calcularIMC());
}
