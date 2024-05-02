import 'package:flutter/material.dart';

class StickersDescription extends StatelessWidget {
  const StickersDescription({
    super.key,
    required this.item,
  });
  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          item['titulo'],
          style: const TextStyle(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var imagem in item['imagens'])
              Column(
                children: [
                  Text(
                    imagem['nome'],
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      imagem['image'],
                      scale: 1,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
