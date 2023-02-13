import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cambiar_contrasenia.dart';
import 'package:flutter_application_1/pages/pantalla_principal.dart';
import 'package:flutter_application_1/pages/view03.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/recuperar.dart';
import 'package:flutter_application_1/screens/body_boarding.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PantallaPrincipal());
  }
}