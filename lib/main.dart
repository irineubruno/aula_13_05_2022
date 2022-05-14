import 'package:aula_13_05_2022/page_home.dart';
import 'package:aula_13_05_2022/page_produto_1.dart';
import 'package:aula_13_05_2022/page_produto_2.dart';
import 'package:aula_13_05_2022/page_produto_3.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(

    routes: {
      '/':(_) => PageHomeScreen(),
      '/page_produto_1': (_) => Produto1(), // Vazio depois aprender passar parametros
      '/page_produto_2': (_) => Produto2(),
      '/page_produto_3': (_) => Produto3(),
    },
  ));
}