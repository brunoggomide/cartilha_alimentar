import 'package:flutter/material.dart';

import 'components/reference_screen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Sobre o APP',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'O aplicativo "Cartilha de Educação Alimentar e Nutricional" foi projetado para promover hábitos alimentares saudáveis de forma lúdica e envolvente, o aplicativo inclui atividades interativas e figurinhas informativos sobre os alimentos. O objetivo é tornar o aprendizado sobre nutrição uma experiência prática e interativa, incentivando escolhas alimentares inteligentes e conscientes.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        height: 1.5, color: Colors.black, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (c) {
                              return ReferenceScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Referências Bibliográficas',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Autora: Paula Fernanda Arroyo.\nFotografia: Maria Eduarda Ameixoeiro Pereira.\nProjeto gráfico: Gilberto Moraes.\nDesenvolvido por: Bruno Gomide',
              textAlign: TextAlign.left,
              style: TextStyle(height: 1.5, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
