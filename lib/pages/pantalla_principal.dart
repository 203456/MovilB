import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/Auth.dart';
import 'package:flutter_application_1/pages/cambiar_contrasenia.dart';
import 'package:flutter_application_1/pages/recuperar.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/view04.dart';
import 'package:flutter_application_1/screens/components/home_screen_facebook.dart';
import 'package:flutter_application_1/screens/components/home_screen_google.dart';
import 'package:flutter_application_1/screens/components/on_boarding.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';





class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          children: [         
            Padding( 
             padding: const EdgeInsets.only(top: 200),
              child: Image.asset("assets/images/4myPet.png"),
            ),

            Padding(                        
              padding: const  EdgeInsets.only(top: 80.0), 
              child: SizedBox(
                height: 50,
                width: 360,
                
                child:TextButton.icon(
                  style: TextButton.styleFrom(
                    
                    backgroundColor: const Color.fromARGB(255, 120, 97, 255),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ), 
                  ),
                  onPressed: (){
                    signup(context);
                  },
                  icon: Image.asset('assets/images/Google.png'),
                  label: const Text(
                    style: TextStyle(fontSize: 21, color: Color.fromARGB(255, 254, 252, 252)),
                    'Continuar con Google', ),
                ),
              )
            ),
            Padding(                        
              padding: const  EdgeInsets.only(top: 20.0), 
              child: SizedBox(
                height: 50,
                width: 360,
                
                child:TextButton.icon(
                  style: TextButton.styleFrom(
                    
                    backgroundColor: Color.fromARGB(255, 54, 31, 183),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ), 
                  ),
                  onPressed: (){ signInWithFacebook();                   
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (_) => const  HomeScreenFb()
                      )
                  );
                  },
                  icon: Image.asset('assets/images/facebook.png'),
                  label: const Text(
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 254, 252, 252)),
                    'Continuar con Facebook', ),
                ),
              )
            ),
            Padding(                        
              padding: const  EdgeInsets.only(top: 20.0), 
              child: SizedBox(
                height: 50,
                width: 360,
                
                child:TextButton.icon(
                  style: TextButton.styleFrom(
                    
                    backgroundColor: Colors.transparent,
                    shape:RoundedRectangleBorder(
                      side: const BorderSide(width: 2, color: Color.fromARGB(255, 128, 128, 128)),
                      borderRadius: BorderRadius.circular(24.0),
                    ), 
                  ),
                  onPressed: () => {                                 
                   Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => const Register()
                    )
                   )
                  },
                  icon: const Icon(Icons.email),
                  label: const Text(
                    style: TextStyle(fontSize: 21, color: Color.fromARGB(255, 0, 0, 0)),
                    'Continuar con e-mail', ),
                ),
              )
            ),
            const Padding(
              padding: EdgeInsets.only( top: 50, bottom: 4),
              child: Text(
                style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 161, 67, 67)),
                "Entrar como invitado"
              ),
            ),
            const Padding(
              padding: EdgeInsets.only( top: 6, bottom: 30),
              child: Text(
                style: TextStyle(fontSize: 17, color: Colors.green),
                "Entrar como vendedor"
              ),
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
    );
  }
}
