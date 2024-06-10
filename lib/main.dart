import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_app/config/constants/environment.dart';
import 'package:school_app/config/router/app_router.dart';
import 'package:school_app/config/theme/app_theme.dart';

void main() async {
  await Environment.initEnvironment();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    performLogin();
  }

  void performLogin() async {
    var dio = Dio();
    var url =
        'http://192.168.100.111:8069/api/auth/login'; // Cambia 192.168.x.x con tu dirección IP local real
    var body = {"username": "pablojuan123@gmail.com", "password": "admin"};

    try {
      Response response = await dio.post(url, data: body);
      print('Response status: ${response.statusCode}');
      print('Response data: ${response.data}');
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error:');
        print('STATUS: ${e.response!.statusCode}');
        print('DATA: ${e.response!.data}');
        print('HEADERS: ${e.response!.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
