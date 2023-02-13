
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pantalla_principal.dart';
import 'package:flutter_application_1/pages/view04.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool showvalue = false;  
  bool valueIn = false;  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 26, 112),
        titleSpacing: 0.0,
        title: const Text('Regístrate'),
        leading: IconButton(
          onPressed:() {},
          icon: IconButton(
            color: Colors.red,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {                                  Navigator.push(
                context, 
                MaterialPageRoute(
                builder: (_) => const PantallaPrincipal()
                )
              );
            },
          ),
        ),
        actions: [ 
          IconButton(
            icon: Image.asset('assets/images/4myPet.png'),
            onPressed: null,
          ),
        ],
      ),
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
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                        children:  [
                          const Padding(
                            padding:  EdgeInsets.only(top: 30, right: 50),
                            child: Text( 
                              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 169, 63, 63)),
                              "Crea una cuenta para usar la app",
                            ) ,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 60, right: 310),
                            child: Text(
                              style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                              "Nombre"
                            ),
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(color: Color.fromARGB(135, 107, 101, 101))
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.person),           
                                hintText: ' Nombre',hintStyle: TextStyle(color: Color.fromARGB(151, 156, 152, 152)),

                
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 232),
                            child: Text(
                              style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                              "Correo electronico"
                            ),
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(                           
                              decoration: InputDecoration(                               
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(color: Color.fromARGB(135, 107, 101, 101))
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.email),  
                                         
                                hintText: 'Correo electronico', hintStyle: TextStyle(color: Color.fromARGB(151, 156, 152, 152)),    
                                                                                            
                              ),
                            ),
                          ), 


                          const Padding(
                            padding: EdgeInsets.only(right: 282),
                            child: Text(
                              style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                              "Contraseña"
                            ),
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 20),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(color: Color.fromARGB(135, 107, 101, 101))
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                prefix: Icon(Icons.lock),           
                                hintText: 'Contraseña', hintStyle: TextStyle(color: Color.fromARGB(151, 156, 152, 152)),           
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20, left: 30),
                            child: Text(
                              style: TextStyle(fontSize: 13, color: Color.fromARGB(160, 100, 91, 91)),
                              "La contraseña debe contener caracteres, números y símbolos con un minimo de 6 caracteres"
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10, left: 1),
                            child: ListTile(  
                              title: RichText(
                                text: const TextSpan(
                                  text: "Al registrarme, acepto los",
                                  style:  TextStyle(color: Colors.black, fontSize: 14),
                                  children: [
                                    TextSpan(
                                      text: " terminos y condiciones",
                                      style: TextStyle(color: Colors.red, fontSize: 14),
                                      children: [
                                        TextSpan(
                                          text: " y la",
                                          style: TextStyle(color: Colors.black, fontSize: 14),
                                          children: [
                                            TextSpan(
                                              text: " politica de privacidad",
                                              style: TextStyle(color: Colors.red, fontSize: 14),
                                        )
                                          ]
                                        )
                                      ]
                                    )

                                  ]
                                )
                              ) ,
                              leading: Radio(                         
                                value: showvalue, 
                                groupValue: null,  
                                onChanged: ( valueIn) {  
                                  setState(() {
                                    showvalue = valueIn!;   
                                  }); 
                                }
                              ),
                            ),  
                          ),
                          Padding(                        
                            padding: const  EdgeInsets.all(30.0), 
                            child: SizedBox(
                              height: 50,
                              width: 350,
                              child:MaterialButton(
                                color: Colors.green,
                                onPressed: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                    builder: (_) => const Login()
                                    )
                                  );
                                },
                                 
                                shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                                child: const Text(
                                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 250, 250, 250)),
                                  'Crear Cuenta', ),
                                
                              ) ,
                            )
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text.rich(
                              TextSpan(
                                text: "¿Ya tienes cuenta?", 
                                style: TextStyle(color: Colors.black, fontSize: 18),
                                children: [
                                  TextSpan(
                                    text: " Inicia sesión",
                                    style: TextStyle(color: Colors.red, fontSize: 18)
                                  )
                                ]
                              )
                            ),
                          )

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