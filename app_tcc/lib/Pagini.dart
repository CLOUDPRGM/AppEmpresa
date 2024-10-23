import 'package:app_tcc/paglivro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cliente{

final String nome;

const Cliente(this.nome);

}


void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: Pagini(),
  ));
}

class Pagini extends StatefulWidget {
  const Pagini({super.key});

  @override
  State<Pagini> createState() =>  Pagini2();
    
  }
  class Pagini2 extends State<Pagini> {
//variaveis locais para receber o texto
    String nme = '';
  
  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
         body: Center( 
                  child: Column( 
                   mainAxisAlignment: MainAxisAlignment.center, 
                   //Alinhamento centralizado
                    children: <Widget>[  
                      
             Image.asset('imagem/Union.png'),    
              const SizedBox(height: 40),
               const Text('Seja Bem-Vindo!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white
                ),
               ),    
               
               //Formulário para preencher o nome
               const SizedBox(height: 40),
               Padding( 
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
               child: TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 15 ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10), // Set content padding to 8 vertical, 12 horizontal
                  hintText: 'Entrada de texto',
                  labelText: 'Nome',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
                    borderSide: BorderSide(
                        width: 0.10,
                   ),
                ),                  
                  iconColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true, fillColor: Colors.white,
                ),
                 keyboardType: TextInputType.name,
                   inputFormatters: <TextInputFormatter>[
                       FilteringTextInputFormatter.singleLineFormatter     
                    ],
                 //associa o valor do campo à variável
                 onChanged: (value) {
                            nme = value;
                          },
              ),
               ),
             
             //Botão para enviar os dados
             const SizedBox(height: 40),
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(82, 212, 206, 206),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {

                      Cliente n = Cliente(nme);

                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PagLivro(),

                      settings: RouteSettings(
                          arguments: n

                      ),
                      ),
                    );
                    
                  },
                    label: const Text('ENTRAR'),
                ),
              ),
             ),
            ],              // This next line does the tric 
          ),
        ),
     ),
    );
  }
}