import 'package:flutter/material.dart';

class Produto3 extends StatefulWidget {
  const Produto3({Key? key}) : super(key: key);

  @override
  State<Produto3> createState() => _Produto3State();
}

class _Produto3State extends State<Produto3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CÓD: 02560 - CONJUNTO TOMADA 2P + T 10A'),
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
                      Image.network('https://santil.cdn.plataformaneo.com.br/produto/0082450.jpg'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Produto: FIO DUPLO 3x4 O cabo multicameras 4 pares sem blindagem é ideal para instalações de câmeras em comércios, residencias, industrias e outros. ESPECIFICAÇÕES TÉCNICAS: Condutor: Fio liga de cobre, 24awg. Isolação: Polietileno de alta densidade (PEAD). Cobertura: Composto de PVC 70°C.'),
                ),
                ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.add_card), label: Text('Comprar')),
              ],
            ),
          ),
        )
    );
  }
}
