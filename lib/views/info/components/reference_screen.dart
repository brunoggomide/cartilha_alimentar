import 'package:flutter/material.dart';

class ReferenceScreen extends StatelessWidget {
  const ReferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Referências Bibliográficas',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'BRASIL. Ministério da Saúde. Caderno de atividades: Promoção da Alimentação Adequada e Saudável: Educação Infantil/Ministério da Saúde, Universidade do Estado do Rio de Janeiro. Brasília: Ministério da Saúde, 2018. 92 p.\n\n'
              'BRASIL. Ministério da Saúde. Secretaria de Atenção Primária à Saúde. Departamento de Promoção da Saúde. Guia Alimentar para Crianças Brasileiras Menores de 2 anos. 2019. Disponível em: http://189.28.128.100/dab/docs/portaldab/publicacoes/guia_da_crianca_2019.pdf. Acesso em: jan. 2020.\n\n'
              'BRASIL. Ministério da Saúde. Secretaria de Atenção à Saúde. Departamento de Atenção Básica. Guia alimentar para a população brasileira / Ministério da Saúde, Secretaria de Atenção à Saúde, Departamento de Atenção Básica. 2. ed., 1. reimpr. Brasília: Ministério da Saúde, 2014. 156 p.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
