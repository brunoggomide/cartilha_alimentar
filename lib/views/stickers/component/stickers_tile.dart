import 'package:educacao_alimentar/views/descriptions/stickers_description.dart';
import 'package:flutter/material.dart';

class StickersTile extends StatelessWidget {
  StickersTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (c) {
              return StickersDescription(item: item);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: item['color'] == 'green'
              ? Colors.green
              : item['color'] == 'blue'
                  ? Colors.cyan
                  : Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: Text(
            item['titulo'],
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
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
