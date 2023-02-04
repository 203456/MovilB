import 'package:flutter/material.dart';


class View02 extends StatelessWidget {
  const View02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 40),
              child: Column(
                children: const [
                  Text(
                    "Hola",
                    style: TextStyle(fontSize: 20.0, color: Colors.amber),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: const[
                  Text(
                    "Hola",
                    style: TextStyle(fontSize: 20.0, color: Colors.amber),
                  ),
                  Text(
                    "Hola",
                    style: TextStyle(fontSize: 20.0, color: Colors.amber),
                  ),
                  Text(
                    "Hola",
                    style: TextStyle(fontSize: 20.0, color: Colors.amber),
                  ),
                  Text(
                    "Hola",
                    style: TextStyle(fontSize: 20.0, color: Colors.amber),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}