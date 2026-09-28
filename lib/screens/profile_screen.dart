import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            width: double.infinity,
            color: const Color(0xFF2A5298),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 45, color: Color(0xFF2A5298)),
                ),
                SizedBox(height: 10),
                Text('Lorem Name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                Text('Class 10th', style: TextStyle(color: Colors.white70, fontSize: 12)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildMenuItem(Icons.person_outline, 'Lorem Name'),
                _buildMenuItem(Icons.school_outlined, 'Academic Details'),
                _buildMenuItem(Icons.grid_view_outlined, 'Lorem ipsum'),
                _buildMenuItem(Icons.settings_outlined, 'Lorem ipsum'),
                _buildMenuItem(Icons.lock_outline, 'Lorem ipsum'),
                const Divider(),
                _buildMenuItem(Icons.logout, 'Log out', isLogout: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, {bool isLogout = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: isLogout ? Colors.red : const Color(0xFF2A5298)),
        title: Text(title, style: TextStyle(color: isLogout ? Colors.red : Colors.black87, fontSize: 14)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
      ),
    );
  }
}