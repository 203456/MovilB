import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.text, this.image, this.descripcion});
  final String? text;
  final String? image;
  final String? descripcion;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 270),
              child: Image.asset(
                image!,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                text!,
                style: const TextStyle(fontSize: 32, color: Colors.purple),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                descripcion!,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
    );

  }
}