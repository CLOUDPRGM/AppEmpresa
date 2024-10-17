import 'package:app_tcc/central.dart';
import 'package:app_tcc/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: Categoria(),
  ));
}


class Categoria extends StatefulWidget {
   const Categoria ({super.key});

   @override
   State<Categoria> createState() => Categoria2();


}

class Categoria2 extends State<Categoria> {

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
                      Image.asset('imagem/logo.png', color: Colors.white),    
                        const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0),
                        ),
             const Text('Categoria',
                style: TextStyle(fontSize: 20, color: Colors.white
                ),
               ),
               const SizedBox(height:30),    
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
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Fundamentos',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            Text(
              'de TI',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
               ]
            ),
          ),
          const SizedBox(height: 10),
 Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Programação e',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            Text(
              'Desenvolvimento de Software',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
               ]
            ),
          ),
          const SizedBox(height: 10),
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
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Banco de Dados',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
               ]
            ),
          ),
          const SizedBox(height: 10),
 Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 49.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Redes e Infraestrutura',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
               ]
            ),
          ),
        const SizedBox(height: 10),
 Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Segurança da Informação',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
               ]
            ),
          ),

              const SizedBox(height: 10),
 Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 55.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Inteligência Artificial',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            Text(
              'e Machine Learning',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            
               ]
            ),
          ),                        
          const SizedBox(height: 10),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 68.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Identidade Visual',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            
               ]
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 95.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Hardware',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            
               ]
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 43.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // cor de fundo, pode ser transparente
              borderRadius: BorderRadius.circular(8.0), // bordas arredondadas
              border: Border.all(
                color: Colors.green, // cor da borda
                width: 2.0, // largura da borda
              ),
            ),
            child:  const Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
            Text(
              'Tecnologia e Sociedade',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, fontWeight: FontWeight.bold // cor do texto
              ),
            ),
            
               ]
            ),
          ),
      

const SizedBox(height: 40),
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

            case 2:
             Navigator.push(context, MaterialPageRoute(builder: (context) => const Central())); // Caminho pra tela "Categoria"
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
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           label: '',  
         ),
                ],
              ),
        ),
      );
            
          
  
}      
}

                
