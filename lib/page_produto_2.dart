import 'package:flutter/material.dart';

class Produto2 extends StatefulWidget {
  const Produto2({Key? key}) : super(key: key);

  @override
  State<Produto2> createState() => _Produto2State();
}

class _Produto2State extends State<Produto2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CÓD: 02548 - LÂMPADA HALÓGENA BULBO 70W 127V'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 350,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network('https://santil.cdn.plataformaneo.com.br/produto/0031128.jpg'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Produto:  Essa lâmpada tem acabamento em vidro, aceita dimmerização, ilumina 360° com uma luz brilhante que só esse tipo de lâmpada proporciona. Sua luz amarela traz mais conforto e aconchego para o ambiente.'),
                ),
                ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.add_card), label: Text('Comprar')),
              ],
            ),
          ),
        )
    );
  }
}
