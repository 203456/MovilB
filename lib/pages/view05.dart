import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/view04.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only( left: 20, right: 20),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints){
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Column(
                        children:  [
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.person),           
                                hintText: ' Name',
                                fillColor: Color.fromARGB(255, 172, 168, 168),
                                filled: true, 
                              ),
                            ),
                          ),
                                                    const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.phone),           
                                hintText: ' Last Name',
                                fillColor: Color.fromARGB(255, 172, 168, 168),
                                filled: true,
                             
                                
                              ),
                            ),
                          ),
                          
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.email),           
                                hintText: ' Email',
                                fillColor: Color.fromARGB(255, 172, 168, 168),
                                filled: true,
                             
                                
                              ),
                            ),
                          ), 

                          const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.phone),           
                                hintText: ' Last Name',
                                fillColor: Color.fromARGB(255, 172, 168, 168),
                                filled: true,
                             
                                
                              ),
                            ),
                          ),
                          
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.lock),           
                                hintText: ' Password',
                                fillColor: Color.fromARGB(255, 172, 168, 168),
                                filled: true,
                             
                                
                              ),
                            ),
                          ),
                        
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.lock),           
                                hintText: ' Confirm Password',
                                fillColor: Color.fromARGB(255, 172, 168, 168),
                                filled: true,
                             
                                
                              ),
                            ),
                          ), 
                          Padding(
                            padding: const  EdgeInsets.all(30.0), 
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (_) => const Login()
                                  )
                                );
                              }, 
                              child: const Text('Registrar'),
                            ),
                          ),
                        ],
                      ),
                ),
              ),
            );
            },
          ),
        ),
      ),
    );
  }
}