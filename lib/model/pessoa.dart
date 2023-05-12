class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getAltura() {
    return _altura;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  String calcularIMC() {
    double valor = _peso / (_altura * _altura);
    if (valor < 16) {
      return "Magreza Grave";
    } else if (valor >= 16 && valor < 17) {
      return "Magreza Moderada";
    } else if (valor >= 17 && valor < 18.5) {
      return "Magreza Leve";
    } else if (valor >= 18.5 && valor < 25) {
      return "Saudável";
    } else if (valor >= 25 && valor < 30) {
      return "Sobrepeso";
    } else if (valor >= 30 && valor < 35) {
      return "Obesidade Grau I";
    } else if (valor >= 35 && valor < 40) {
      return "Obesidade Grau II (Severa)";
    } else {
      return "Obesidade Grau III (Mórbida)";
    }
  }
}
