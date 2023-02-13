import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pantalla_principal.dart';
import 'package:flutter_application_1/pages/view04.dart';

class CambiarContra extends StatelessWidget {
  const CambiarContra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 26, 112),
        titleSpacing: 0.0,
        title: const Text('Recuperar contraseña'),
        leading: IconButton(
          onPressed:() {},
          icon: IconButton(
            color: Colors.red,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {                                  
              Navigator.push(
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
                            padding:  EdgeInsets.only(top: 15),
                            child: Text( 
                              style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 90, 86, 86)),
                              "Por seguridad, tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayúscula, minúsculas, contener por lo menos un número y un carácter especial.",
                            ) ,
                          ),

                          const Padding(
                            padding: EdgeInsets.only(right: 280, top: 50, bottom: 4),
                            child: Text(
                              style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                              "Contraseña"
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
                                         
                                hintText: 'Contraseña', hintStyle: TextStyle(color: Color.fromARGB(151, 156, 152, 152)),    
                                                                                            
                              ),
                            ),
                          ), 
                          
                          const Padding(
                            padding: EdgeInsets.only(right: 232, bottom: 4),
                            child: Text(
                              style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                              "Correo electronico"
                            ),
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 290),
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
                                  'Enviar solicitud', 
                                ),
                                
                              ) ,
                            )
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