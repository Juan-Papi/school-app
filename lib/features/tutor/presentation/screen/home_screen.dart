import 'package:flutter/material.dart';
import 'package:school_app/features/shared/widgets/custom_appbar.dart';
import 'package:school_app/features/tutor/presentation/views/estudiante/home_view.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  final int pageIndex;
  HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = <Widget>[
    HomeView(), // <--- categorias View
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const CustomAppbar()),
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
    );
  }
}
