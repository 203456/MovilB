
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/view04.dart';
import 'package:flutter_application_1/screens/components/content_boarding.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}


class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;

  late PageController varController;

  @override
  void initState() {
    super.initState();
    varController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    varController.dispose();
  }

  List<Map<String, String>> listBoarding = [
    {
      "titulo": "Esparcimiento",
      "imagen": "assets/images/B1.png",
      "descripcion": "Brindamos todos los servicios para consentir a tu mascota"
    },
    {
      "titulo": "Adopción",
      "imagen": "assets/images/B2.png",
      "descripcion": "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat."
    },
    {
      "titulo": "Hospitalidad",
      "imagen": "assets/images/B3.png",
      "descripcion": "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat."
    },
    {
      "titulo": "Veterinaria",
      "imagen": "assets/images/B4.png",
      "descripcion": "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat."
    },
    {
      "titulo": "Tienda",
      "imagen": "assets/images/B5.png",
      "descripcion": "Compra todas las necesidades de tu mascota sin salir de casa"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
    
      child: Column(
         
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          textDirection: TextDirection.rtl,
        children: [
          Expanded(
            flex: 20,
            child: PageView.builder(
                controller: varController,
                itemCount: listBoarding.length,
                onPageChanged: (int page) {
                  setState(() {
                    currentPage = page;
                  });
                },
              itemBuilder: (context, index) => ContentBoarding(
                image: listBoarding[index]['imagen'],
                text: listBoarding[index]['titulo'],
                descripcion: listBoarding[index]['descripcion'],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    List.generate(listBoarding.length, (index) => buildPage(index)),
              ),
            )
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: SizedBox(
            height: 50,
            width: 300,
            child: MaterialButton(
              color: currentPage == listBoarding.length - 1
                  ? Colors.green
                  : Colors.white,
              onPressed: () async {
                currentPage == listBoarding.length - 1
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Login()))
                    : varController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
              },
              textColor: currentPage == listBoarding.length - 1
                  ? Colors.white
                  : Colors.grey,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                  currentPage == listBoarding.length - 1
                      ? 'Continuar'
                      : "Siguiente",
                  style: const TextStyle(fontSize: 16)),
            ),
          ),
        )
      ]),
    );
  }

AnimatedContainer buildPage(int index) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    margin: const EdgeInsets.only(right: 5),
    height: 5,
    width: currentPage == index ? 25 : 20,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            currentPage == index ? Colors.red : Colors.grey.withOpacity(0.4)),
  );
}
}