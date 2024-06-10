import 'package:flutter/material.dart';
import 'package:school_app/features/shared/widgets/custom_appbar.dart';
import 'package:school_app/features/tutor/presentation/views/estudiante/tipo_nota_view.dart';

class TipoNotaScreen extends StatelessWidget {
  static const name = 'tipo-nota-screen';
  const TipoNotaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const CustomAppbar()), body: TipoNotaView());
  }
}
