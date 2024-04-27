import 'package:flutter/material.dart';

import '../../config/activities_data.dart';
import 'components/activities_tile.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Atividades',
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
              itemCount: atividades.length,
              itemBuilder: (context, index) {
                var atividade = atividades[index];
                return ActivitiesTile(
                  item: atividade,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
