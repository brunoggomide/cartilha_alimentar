import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Introdução',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
              style: TextStyle(
                height: 1.5,
                fontSize: 20,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text:
                      'A cartilha é um material educativo destinado aos (às) professores (as) com o objetivo de subsidiar ações sobre alimentação adequada e saudável no ambiente escolar, estabelecendo um fio condutor para o desenvolvimento do tema com o intuito da construção do conhecimento em alimentação saudável para os alunos do ensino infantil, como uma espécie de alfabetização em alimentação saudável para as crianças.\n\n',
                ),
                TextSpan(
                  text:
                      'Este material pretende contribuir para o fortalecimento de ações de Educação Alimentar e Nutricional (EAN) integrando a comunidade escolar na construção do aprendizado coletivo. Para o desenvolvimento dos temas das atividades propostas o principal referencial é o Guia Alimentar Para a População Brasileira que nos apresenta conceitos e nos orienta para termos uma alimentação adequada e saudável.\n\n',
                ),
                TextSpan(
                  text:
                      'Nas atividades contidas nesta cartilha foi utilizado o cardápio da alimentação escolar para desenvolver com os alunos o conhecimento dos principais alimentos que compõem uma alimentação adequada e saudável.\n\n',
                ),
                TextSpan(
                  text:
                      'A escola é que faz a ligação entre os conhecimentos familiares, comunitários e escolares, de origem de várias áreas do saber, como também, propicia o desenvolvimento de atitudes e comportamentos necessários para a vida em sociedade. O ambiente escolar é um dos melhores para o desenvolvimento do aprendizado, portanto, do aprender e com este material ter a oportunidade de ensinar aos alunos da educação infantil a conhecer a alimentação saudável para poder praticar durante a sua vida e realizar um hábito alimentar adequado.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
