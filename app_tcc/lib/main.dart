import 'package:app_tcc/Pagini.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
         body: Center( 
                  child: Column( 
                   mainAxisAlignment: MainAxisAlignment.center, 
                   //Alinhamento centralizado
                    children: <Widget>[  
            // This next line does the trick
             Container(
                child: Image.asset('imagem/dev reads.png'), 
             
              ),              
              
              SizedBox(height:100),
                Container(
              width: 300, // Largura do botão
              height: 50, // Altura do botão
              
              child: ElevatedButton.icon(
                
                // Define o estilo do ElevatedButton
                
                style: ElevatedButton.styleFrom(
                  // Define a cor do texto do botão
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  // Define as bordas do botão como arredondadas
                  // Define o estilo do texto do botão
                  
                  textStyle: TextStyle(fontSize: 16),
                                      
                ),
                // Define a ação ao pressionar o botão
                onPressed: () {
                  // Navega para a página MenuPag
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pagini()),
                    
                  );
                },
                    label: const Text('Continuar'),
                    icon: Icon(Icons.search),
                // Texto do botão

              ),
                ),
            ],  
          ),
        ),
        
      ),
    );
  }
}