// Calcular IMC - Índice de Massa Corporal

import 'dart:io';

class formulaImc {
  double peso = 0, imc = 0, altura = 0;
  var nome = "";

  double Peso() {
    peso = double.parse(stdin.readLineSync());
    return peso;
  }

  double Altura() {
    altura = double.parse(stdin.readLineSync());
    return altura;
  }

  double CalculoImc() {
    imc = peso / (altura * altura);
    return imc;
  }

  String imcStatus() {
    if (imc < 18.5) {
      print("+ Baixo Peso");
    }else if(imc < 24.9) {
      print("+ Meus parabéns, seu IMC:" + imc.toStringAsFixed(2) +
          " é considerado Adequado.");
    }else if(imc < 29.9) {
      print("+ Sobrepeso");
    }else if(imc < 34.9) {
      print("+ Obsidade CL.1");
    }else if(imc < 39.9) {
      print("+ Obsidade CL.2");
    }else {
      print("+ Obesidade CL.3");
    }
  }

  primeiroNome() {
    nome = stdin.readLineSync();
    return nome;
  }

  void informacoes() {

    print("Caro(a) " + nome.split(" ")[0].toUpperCase() + " o seu Peso é ${peso.toStringAsFixed(2)}" +
        " e Altura ${altura.toStringAsFixed(2)}, gerou o resultado do seu IMC" +
        " de ${imc.toStringAsFixed(2)} é considerado:");
    imcStatus();
  }
}

main() {

  var dados = new formulaImc();

  print("");
  print("Informe o nome completo: ");
  dados.primeiroNome();

  stdout.write("Entre com o seu peso: ");
  dados.Peso();

  stdout.write("Entre com a sua altura: ");
  dados.Altura();

  print("");
  dados.CalculoImc();
  dados.informacoes();

}