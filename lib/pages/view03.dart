import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/view04.dart';
import 'package:flutter_application_1/pages/register.dart';


class View03 extends StatelessWidget {
  const View03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  
                  Text(
                    "Hola",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                  Text(
                    "Hola",
                    
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  )
                ],
              ),
            
              
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: const [
                  Text(
                    "Hola",
                    style: TextStyle(color: Colors.green, fontSize: 30.0),
                  ),
                  Text(
                    "Hola",
                    style: TextStyle(color: Colors.green, fontSize: 30.0),
                  ),
                  Text(
                    "Hola",
                    style: TextStyle(color: Colors.green, fontSize: 30.0),
                  ),
                  Text(
                    "Hola",
                    style: TextStyle(color: Colors.green, fontSize: 30.0),
                  )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => const Register()
                    )   
                  );
                },
                child: const Text('Regresar'),
              )
            ),

          ],
        )
      ),
    );
  }
}