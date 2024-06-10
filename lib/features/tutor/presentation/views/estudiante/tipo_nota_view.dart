import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_app/features/tutor/presentation/widgets/card.dart';

class TipoNotaView extends StatelessWidget {
  final estudiante;
  TipoNotaView({super.key, required this.estudiante});

  final cards = <Map<String, dynamic>>[
    {'elevation': 'Prueba 1', 'label': 'Elevation 0'},
    {'elevation': 'Prueba 2', 'label': 'Elevation 1'},
    {'elevation': 'Prueba 3', 'label': 'Elevation 2'},
    {'elevation': 'Prueba 4', 'label': 'Elevation 3'},
    {'elevation': 'Prueba 5', 'label': 'Elevation 4'},
    {'elevation': 'Prueba 6', 'label': 'Elevation 5'},
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
          child: SizedBox(
            height: 200,
            width: 335,
            child: GestureDetector(
              onTap: () {
                context.push('/login');
              },
              child: Card(
                color: colors.primary,
                elevation: 0.0,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ver Boletin',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20)), //
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
          child: SizedBox(
            height: 200,
            width: 335,
            child: GestureDetector(
              onTap: () {
                context.push('/login');
              },
              child: Card(
                color: colors.primary,
                elevation: 0.0,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ver nota final',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20)), //
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
