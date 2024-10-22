import 'package:flutter/material.dart';

// Importação da página de perfil
import 'profile_page.dart'; // Assegure-se de que o caminho esteja correto.

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(146, 91, 245, 1),
      body: SafeArea(
        child: Column(
          children: [
            // Ícone de fechar no topo esquerdo
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {
                    // Ação ao fechar
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.close, color: Color.fromRGBO(146, 91, 245, 1)),
                  ),
                ),
              ),
            ),

            // Espaçamento entre o ícone e os itens do menu
            SizedBox(height: 50),

            // Itens do menu centralizados
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildMenuItem(context, 'Home', Colors.white.withOpacity(0.7)),
                  SizedBox(height: 20),
                  _buildMenuItem(context, 'Order History', Colors.white.withOpacity(0.7)),
                  SizedBox(height: 20),
                  _buildMenuItem(context, 'My Profile', Colors.white, isSelected: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, Color color, {bool isSelected = false}) {
    return GestureDetector(
      onTap: () {
        // Navegação baseada no título do item
        if (title == 'Home') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        } else if (title == 'Order History') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryPage()));
        } else if (title == 'My Profile') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
        }
      },
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 24,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

// Exemplo de páginas para navegação
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(child: Text('Welcome to Home Page!')),
    );
  }
}

class OrderHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order History')),
      body: Center(child: Text('Your Order History')),
    );
  }
}
