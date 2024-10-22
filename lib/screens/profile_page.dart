import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            // Ação do menu
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto de perfil e nome do usuário
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.purple.shade100,
              child: Icon(Icons.person, size: 60, color: Color.fromRGBO(146, 91, 245, 1)),
            ),
            SizedBox(height: 10),
            Text(
              'Karim Santel',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              '0167873902',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),

            // Configurações da conta
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Account Settings',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Opções de configurações
            _buildSettingsOption(
              icon: Icons.person,
              title: 'Profile setting',
              onTap: () {
                // Ação para Profile setting
              },
            ),
            _buildSettingsOption(
              icon: Icons.lock,
              title: 'Change password',
              onTap: () {
                // Ação para Change password
              },
            ),
            _buildSettingsOption(
              icon: Icons.chat,
              title: 'Chat support',
              onTap: () {
                // Ação para Chat support
              },
            ),

            SizedBox(height: 30),
            Divider(),

            // Opções de logout e desativar conta
            _buildSettingsOption(
              icon: Icons.logout,
              title: 'Log out',
              onTap: () {
                // Ação para Logout
              },
            ),
            ListTile(
              leading: Icon(Icons.warning_amber_rounded, color: Colors.red),
              title: Text(
                'Deactivate account',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                // Ação para Deactivate account
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsOption({required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.purple.shade50,
        child: Icon(icon, color: Colors.purple),
      ),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: onTap,
    );
  }
}
