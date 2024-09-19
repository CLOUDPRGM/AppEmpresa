import 'package:app_tcc/Pagini.dart';
import 'package:app_tcc/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DevReadsApp());
}

class DevReadsApp extends StatelessWidget {
  const DevReadsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'DEV READS',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Bem-Vindo NOME!',
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
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
          ],
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
         /*  onTap: (int index) {
          setState(() {
          });
          // Código para execução da troca de tela
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MainApp())); // Caminho pra tela "Cultura"
            break;
            
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Pagini())); // Caminho pra tela "Home"
            break;
          }
          }, */
        
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

class BooksGrid extends StatelessWidget {
  const BooksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.6,
        ),
        itemCount: 4, // Placeholder for 4 books
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.book, color: Colors.white, size: 50),
                SizedBox(height: 10),
                Text(
                  'NOME LIVRO',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'R\$ 00,00',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}