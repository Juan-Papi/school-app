import 'package:flutter/material.dart';
import 'package:school_app/features/tutor/presentation/widgets/card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final cards = <Map<String, dynamic>>[
    {'elevation': 'Prueba 1', 'label': 'Nota 0'},
    {'elevation': 'Prueba 2', 'label': 'Elevation 1'},
    {'elevation': 'Prueba 3', 'label': 'Elevation 2'},
    {'elevation': 'Prueba 4', 'label': 'Elevation 3'},
    {'elevation': 'Prueba 5', 'label': 'Elevation 4'},
    {'elevation': 'Prueba 6', 'label': 'Elevation 5'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 5.0),
            child: Text(
              'Estudiantes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ...cards.map(
          (card) => CardType3(nombre: card['elevation'], edad: card['label']),
        ),
      ]),
    );
  }
}
