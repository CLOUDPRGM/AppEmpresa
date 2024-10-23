import 'package:app_tcc/categoria.dart';
import 'package:app_tcc/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: Central(),
  ));
}


class Central extends StatefulWidget {
   const Central ({super.key});

   @override
   State<Central> createState() => Central2();


}

class Central2 extends State<Central> {

//variaveis locais para receber o texto

  @override
  void initState(){
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    
            return  MaterialApp(
      home: Scaffold( 
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
         body:  SingleChildScrollView ( 
          child: Column(
                   //Alinhamento centralizado
                    children: <Widget>[  
                        const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                        
             child: Text('Central de Atendimento', textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 40, color: Colors.white,  
                fontWeight: FontWeight.bold
                ),
               ),
                        ),
           const SizedBox(height:100),
             Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 80.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:   Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Image.asset('imagem/atend.png'),
            const Text(
              'TELEFONE SAC',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            
               ]
            ),
          ),
                const SizedBox(height:50),
             Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:   Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            
            Image.asset('imagem/chat.png'),
            const Text(
              'CHAT DE ATENDIMENTO',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            
               ]
            ),
          ),
                const SizedBox(height:50),
             Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:   Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            
            Image.asset('imagem/gmail.png'),
            const Text(
              'MANDE UM E-MAIL',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            
               ]
            ),
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
             Navigator.push(context, MaterialPageRoute(builder: (context) => const Categoria())); // Caminho pra tela "Categoria"
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

                
