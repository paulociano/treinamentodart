import 'dart:convert';
import 'dart:io';
import 'package:calc_imc/classes/pessoa.dart';
import 'package:calc_imc/functions/calculateimc.dart';
import 'package:calc_imc/functions/classificaimc.dart';

void main(List<String> arguments) {
  print("Bem-vindo à calculadora IMC");
  print("Digite o seu nome:");
  var line = stdin.readLineSync(encoding: utf8);
  String nome = line ?? "0";

  print("Digite o peso da pessoa:");
  line = stdin.readLineSync(encoding: utf8);
  double peso = double.parse(line ?? "0");

  print("Digite a altura da pessoa:");
  line = stdin.readLineSync(encoding: utf8);
  double altura = double.parse(line ?? "0");

  Pessoa pessoa = Pessoa(nome, peso, altura);
  double imc = calculateIMC(pessoa.peso, pessoa.altura);

  String classifica = classificaIMC(imc);

  print("O iMC de ${pessoa.nome} é $imc - $classifica");
}
