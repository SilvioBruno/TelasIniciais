// app_widget.dart
import 'package:flutter/material.dart';
import 'package:unicialtelas/inicio.dart';
import 'login.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home':(context) => Inicio(),
      }, // Definindo a tela de login como a tela inicial
    );
  }
}
