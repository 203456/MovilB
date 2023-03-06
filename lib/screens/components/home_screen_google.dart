import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/Auth.dart';
import 'package:flutter_application_1/pages/pantalla_principal.dart';
import 'package:flutter_application_1/pages/view04.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
            appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 26, 26, 112),
            titleSpacing: 0.0,
            title: const Text('Welcome'),
            leading: IconButton(
              onPressed:() {},
              icon: IconButton(
                color: Colors.red,
                icon: const Icon(Icons.arrow_back),
                  onPressed: (){
                    signOutFromGoogle();              
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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text(user!.email!),
            Text(user!.displayName!),
            // CircleAvatar(
            //   backgroundImage: NetworkImage(user?.photoURL == null ? 'assets/images/4myPet.png' : user!.photoURL!),
            //   radius: 20,
            // )
            
          ],
        )
      )
    );
  }
}
