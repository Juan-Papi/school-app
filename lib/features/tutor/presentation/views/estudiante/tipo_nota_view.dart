import 'package:flutter/material.dart';
import 'package:school_app/features/tutor/presentation/widgets/card.dart';

class TipoNotaView extends StatelessWidget {
  TipoNotaView({super.key});

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
        ...cards.map(
          (card) => Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 10.0),
            child:
                CardType3(elevation: card['elevation'], label: card['label']),
          ),
        ),
      ]),
    );
  }
}
