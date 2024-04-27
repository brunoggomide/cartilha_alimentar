import 'package:educacao_alimentar/config/stickers_data.dart';
import 'package:educacao_alimentar/views/stickers/component/stickers_tile.dart';
import 'package:flutter/material.dart';

class StickersScreen extends StatelessWidget {
  const StickersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Figurinhas',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              physics: const BouncingScrollPhysics(),
              itemCount: stickers.length,
              itemBuilder: (context, index) {
                var sticker = stickers[index];
                return StickersTile(
                  item: sticker,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
