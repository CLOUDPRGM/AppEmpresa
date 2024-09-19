
import 'package:app_tcc/pagLivro2.dart';
import 'package:app_tcc/pagini.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: PagLivro(),
  ));
}

class PagLivro extends StatelessWidget {
  const PagLivro({super.key});

  @override
  Widget build(BuildContext context) {
        final n = ModalRoute.of(context)!.settings.arguments as Cliente;

    return MaterialApp(
      
      home: Scaffold(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center( 
                  child: Column( 
                   mainAxisAlignment: MainAxisAlignment.center, 
                   //Alinhamento centralizado
                    children: <Widget>[  
                      const SizedBox(height: 20,
                      width: 10),
                     Image.asset('imagem/logo.png', color: Colors.white,), 
//Espaçamento entre imagem ao texto
                    Text("Bem-Vindo, ${n.nome}!"  , style: const TextStyle( color: Color.fromARGB(255, 3, 219, 10),fontSize: 30)), //Texto junto ao dado envidado do nome
                 
                  const SizedBox(height:20),
 FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DevReadsApp()),
                  );
                },
                child: const Text('Voltar',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                )
               ),
                    ],
                  ),  
                  ),
      ),
    );
}
}