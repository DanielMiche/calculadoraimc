class TextoInvalidoException implements Exception {
  String error() => "Valor Inválido";

  @override
  String toString() {
    return error();
  }
}
