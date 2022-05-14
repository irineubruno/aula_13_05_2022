import 'package:flutter/material.dart';

class PageHomeScreen extends StatefulWidget {
  const PageHomeScreen({Key? key}) : super(key: key);

  @override
  State<PageHomeScreen> createState() => _PageHomeScreenState();
}

class _PageHomeScreenState extends State<PageHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Construção - Vendas'),
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
                    Image.network('https://santil.cdn.plataformaneo.com.br/produto/0001814.jpg'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Produto: FIO DUPLO 3x4'),
              ),
              ElevatedButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/page_produto_1');
              },
                  icon: Icon(Icons.start), label: Text('Detalhes')),
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
                child: Text('Produto: LÂMPADA HALÓGENA BULBO 70W 127V'),
              ),
              ElevatedButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/page_produto_2');
              }, icon: Icon(Icons.start), label: Text('Detalhes')),
              SizedBox(
                height: 350,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network('https://santil.cdn.plataformaneo.com.br/produto/0082450.jpg'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Conjunto Tipo: Tomada Dupla 10A; Corrente: 10A; Referência/Modelo: 680111; Linha: Zeffia; Fabricante/Marca: Pial Legrand;  Cor: Branca;'),
              ),
              ElevatedButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/page_produto_3');
              }, icon: Icon(Icons.start), label: Text('Detalhes')),
            ],
          ),
        ),
      )
    );
  }
}
