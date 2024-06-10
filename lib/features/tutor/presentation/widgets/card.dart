import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 

class CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const CardType3({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      height: 200,
      width: 335,
      child: GestureDetector(
        onTap: () {
          context.push('/tipo-nota');
        },
        child: Card(
          color: colors.primary,
          elevation: 0.0,
          child: const Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.school_outlined,
                      color: Colors.white60,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Juan Pablo Rodriguez',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Espacio entre textos
                Text('Edad: 25 años',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white)), // Label que viene del map
              ],
            ),
          ),
        ),
      ),
    );
  }
}
