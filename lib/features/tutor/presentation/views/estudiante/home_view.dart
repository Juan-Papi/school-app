import 'package:flutter/material.dart';
import 'package:school_app/features/tutor/presentation/widgets/card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final cards = <Map<String, dynamic>>[
    {'elevation': 0.0, 'label': 'Elevation 0'},
    {'elevation': 1.0, 'label': 'Elevation 1'},
    {'elevation': 2.0, 'label': 'Elevation 2'},
    {'elevation': 3.0, 'label': 'Elevation 3'},
    {'elevation': 4.0, 'label': 'Elevation 4'},
    {'elevation': 5.0, 'label': 'Elevation 5'},
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
          (card) =>
              CardType3(elevation: card['elevation'], label: card['label']),
        ),
      ]),
    );
  }
}
