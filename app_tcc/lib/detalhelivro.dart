import 'package:app_tcc/main.dart';
import 'package:app_tcc/pagini.dart';
import 'package:app_tcc/paglivro.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: DetalheLivro(),
  ));
}


class DetalheLivro extends StatefulWidget {
   const DetalheLivro ({super.key});

   @override
   State<DetalheLivro> createState() => DetalheLivro2();


}

class DetalheLivro2 extends State<DetalheLivro> {

//variaveis locais para receber o texto

  @override
  void initState(){
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    
            final liv = ModalRoute.of(context)!.settings.arguments as Livro2; //Chegada do nome 
            return  MaterialApp(
      home: Scaffold( 
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
         body:  SingleChildScrollView ( 
          
          child: Column(
                   //Alinhamento centralizado
                    children: <Widget>[  
                      Image.asset('imagem/logo.png', color: Colors.white),    
                        const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0),
                        ),
             Container(
            height: 250,
             //Retornar para aparecer na tela
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [ 
                const SizedBox(height: 20),
                Image.asset(liv.image,
                height: 200,
                width: 200,
                ),
              ]
            ),  
          ),
          const SizedBox(height: 20),
          Text(
                  textAlign: TextAlign.center,
                  liv.title, //Pega o título
                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
               Text(
                  liv.preco, //Pega o preço
                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ), 
        ],
       ),
       ),
                  
          // A professora alterou navegationBar para fora do 
                bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.green,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white54,
          onTap: (int index) { //É como se fosse o onpression
         setState(() {
         });
         // Código para execução da troca de tela
         switch (index) {
           case 0:
             Navigator.push(context, MaterialPageRoute(builder: (context) => const MainApp())); // Caminho pra tela "Home"
           break;
           
           case 1:
             Navigator.push(context, MaterialPageRoute(builder: (context) => const Pagini())); // Caminho pra tela "Categoria"
           break;
         }
         },
                items: const [
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: '',            
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.grid_view),
           label: '',  
         ),
                ],
              ),
        ),
      );
            
          
  
}      
}

                
