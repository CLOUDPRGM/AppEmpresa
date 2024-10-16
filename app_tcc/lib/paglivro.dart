import 'package:app_tcc/categoria.dart';
import 'package:app_tcc/central.dart';
import 'package:app_tcc/detalhelivro.dart';
import 'package:app_tcc/main.dart';
import 'package:app_tcc/pagini.dart';
import 'package:flutter/material.dart';

class Livro{

final String image;
final String title;
final String preco;
final String edi;
final String isbn;
final String pag;
final String idioma;
final String desc;

Livro({required this.image, required this.title, required this.preco, required this.edi,
required this.isbn, required this.pag, required this.idioma, 
required this.desc});
}
 
//Ponte da classe Livro

class Livro2{

final String image;
final String title;
final String preco;
final String edi;
final String isbn;
final String pag;
final String idioma;
final String desc;


Livro2({required this.image, required this.title, required this.preco, 
required this.edi, required this.isbn, required this.pag, required this.idioma, 
required this.desc});
}


void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: DevReadsApp(),
  ));
}

class DevReadsApp extends StatelessWidget {
  const DevReadsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagLivro(),
    );
  }
}

 class PagLivro extends StatefulWidget {
  const PagLivro ({super.key});

  @override
  State<PagLivro> createState() => PagLivro2();

} 

class PagLivro2 extends State<PagLivro>{

  @override
  Widget build(BuildContext context) {
        final n = ModalRoute.of(context)!.settings.arguments as Cliente; //Chegada do nome 
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,        
          ),
      body: SingleChildScrollView(        
        child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Image.asset('imagem/logo.png', color: Colors.white),    
          Text(textAlign: TextAlign.center,
          "Bem-Vindo, ${n.nome}!", //A variável do nome do Cliente aparece aqui         
          style: const TextStyle( 
          color: Color.fromARGB(255, 3, 219, 10),fontSize: 30,)), //Texto junto ao dado envidado do nome
             const Padding(
              padding: EdgeInsets.all(16.0),
             ),
                
    
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 66, 66, 66),
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child:  const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    hintText: 'Buscar por Nome, Autores ou Categorias',
                    hintStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
              const SizedBox(height: 20),
              const SectionTitle(title: 'POPULARES'),
              const BooksGrid(),
              const SectionTitle(title: 'PROMOÇÕES'),
              const BooksGrid(),
              const SectionTitle(title: 'LIVROS DA SEMANA'),
              const BooksGrid(),
              const SizedBox(height: 40),

          ],       
        ),
      ),


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
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

class BooksGrid extends StatefulWidget {
   const BooksGrid({super.key});

   @override
   State<BooksGrid> createState() => BooksGrid2();


}

class BooksGrid2 extends State<BooksGrid> {
//variaveis locais para receber o texto

   
   final List livros = [ //Carregar os livros

    Livro(image: 'imagem/img1.png', title: 'Codigo Limpo', preco:'R\$ 85,00', 
    edi: 'AltaBooks', isbn: '9788576082675', pag: '425', idioma: 'Português', 
    desc:
    'Mesmo um código ruim pode funcionar. Mas se ele não for limpo, pode acabar com uma empresa de desenvolvimento. Perdem-se a cada ano horas incontáveis e recursos importantes devido a um código mal escrito. Mas não precisa ser assim.'),
    
    Livro(image: 'imagem/img2.png', title: 'A Segunda era das Máquinas', preco:'R\$ 490,00',  
    edi: 'Alta Books', isbn: '9788576089148', pag: '352', idioma: 'Português', 
    desc: 
    'Em A Segunda Era das Máquinas, Erik Brynjolfsson e Andrew McAfee, do MIT, ― dois pensadores à frente de seu campo ― revelam as forças que promovem a reinvenção de nossas vidas e de nossa economia. Conforme todo o impacto das tecnologias digitais for sentido, perceberemos uma riqueza imensa na forma de tecnologias pessoais, infraestrutura avançada e acesso quase sem fronteiras aos itens culturais que enriquecem nossas vidas.'),
    
    Livro(image: 'imagem/img3.png', title: 'Como Criar Uma Mente', preco: 'R\$ 67,45',  
    edi: 'Editora Aleph', isbn: '9788576571698', pag: '400', idioma: 'Português', 
    desc: 
    'Neste livro, Ray Kurzweil dá um salto em relação às pesquisas sobre IA. Ao discutir as tecnologias que permitirão ampliar muitíssimo os poderes da nossa mentee a criação de uma superinteligência revolucionária, Como criar uma mente dá outra dimensão ao debate científico, projetando um futuro impressionante para a interação entre homem e máquina.'),

  ];
  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder
      (
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //Quantidade de linhas
          crossAxisSpacing: 10, //Daqui o espaçamento entre as divisorias
          mainAxisSpacing: 10,
          childAspectRatio: 0.6,
        ),
        itemCount: livros.length, // Placeholder que pega a quantidade de livros disponíveis
        itemBuilder: (context, index) {           
          
           // ignore: non_constant_identifier_names
           final Livro = livros[index]; 
           //Aqui onde o App acessará os livros na classe
          return
          Container( //Retornar para aparecer na tela
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 

                Image.asset(Livro.image,
                height: 100,
                width: 100,
                ),
                const SizedBox(height:15),
                Text(
                  textAlign: TextAlign.center,
                  Livro.title, //Pega o título
                  style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                ),
               Text(
                  Livro.preco, //Pega o preço
                  style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                ), 
                const SizedBox(height: 10), 
                
                TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          child:
                              const Text('Detalhes do Livro'),
                          onPressed: () {    
                           
                            Livro2 liv = Livro2(image: Livro.image, title: Livro.title, preco: Livro.preco, edi: Livro.edi,
                             isbn: Livro.isbn, pag: Livro.pag, idioma: Livro.idioma, desc: Livro.desc);
            
                         Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>   const DetalheLivro(),
                                  settings: RouteSettings(arguments: liv)),
                            );
                          },
                        ),
              ],
            ),  
          );
        },
      ),
    );
  }
}
                
