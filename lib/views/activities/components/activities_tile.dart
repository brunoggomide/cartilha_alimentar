import 'package:flutter/material.dart';

class ActivitiesTile extends StatelessWidget {
  ActivitiesTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Aqui você pode inserir a navegação para a DescriptionScreen, como comentado anteriormente
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (c) {
        //       return DescriptionScreen(item: item);
        //     },
        //   ),
        // );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(
            vertical:
                10), // Adiciona padding vertical para aumentar a altura do container
        alignment: Alignment.center, // Alinha o conteúdo (ListTile) ao centro
        decoration: BoxDecoration(
          color: Colors.cyan, // Cor azul vibrante para o fundo
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: Text(
            item['titulo'],
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: Text(
            item['subtitulo'],
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white70),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
