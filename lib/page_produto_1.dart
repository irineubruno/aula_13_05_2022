import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Produto1 extends StatefulWidget {
  const Produto1({Key? key}) : super(key: key);


  @override
  State<Produto1> createState() => _Produto1State();
}

class _Produto1State extends State<Produto1> {
  final Uri _url = Uri.parse('https://wa.me+5569992996821');

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CÓD: 02547 - FIO DUPLO 3x4'),
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
                  child: Text('Produto: FIO DUPLO 3x4 O cabo multicameras 4 pares sem blindagem é ideal para instalações de câmeras em comércios, residencias, industrias e outros. ESPECIFICAÇÕES TÉCNICAS: Condutor: Fio liga de cobre, 24awg. Isolação: Polietileno de alta densidade (PEAD). Cobertura: Composto de PVC 70°C.'),
                ),
                ElevatedButton.icon(onPressed: _launchUrl, icon: Icon(Icons.add_card), label: Text('Comprar')),
              ],
            ),
          ),
        )
    );
  }
}
