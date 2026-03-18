import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão de Visita Felipe Gabriel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(128, 210, 125, 125),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cartão de Visita"),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Center(
          child: Container(
            width: 350,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50), 
                  child: Image.asset(
                    'images/eu.png', 
                    width: 100, 
                    height: 100, 
                    fit: BoxFit.cover,
                  ),
                ),    
                
                const SizedBox(height: 20),
                
                const Text(
                  "Felipe Gabriel Schmitt",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                
                const SizedBox(height: 8),
                
                const Text(
                  "Estudante de Análise e Desenvolvimento de Sistemas", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(218, 255, 255, 255),
                  )
                ),
                
                const SizedBox(height: 30),
                
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.email, color: Colors.black),
                      SizedBox(width: 10),
                      Text("felipegabrielsc2006@gmail.com", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone, color: Colors.black),
                      SizedBox(width: 10),
                      Text("+55 47 99166-0977", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                
                const SizedBox(height: 30),
                
                const Icon(Icons.thumb_up, color: Color.fromARGB(255, 255, 255, 255), size: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}