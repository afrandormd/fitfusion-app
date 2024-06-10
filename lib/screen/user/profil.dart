import 'package:fitfusion_app/config/assets.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E), // Latar belakang gelap
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(
            color: Asset.colorPrimaryGreen, // Set the text color to your desired color
          ),
        ),
        backgroundColor: Colors.transparent, // Make the AppBar background transparent
        elevation: 0, // Remove the AppBar shadow
      ),
      body: SingleChildScrollView(
        // Tambahkan SingleChildScrollView di sini
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 60,
                  // backgroundImage: AssetImage(Asset.profileImage),
                  backgroundImage: AssetImage('assets/images/profil.png'),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Umar Sharein Mulyana Al-Dayat',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Asset.colorPrimaryGreen),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildProfileItem('Berat Badan', '70 kg'),
                  _buildProfileItem('Tinggi Badan', '179 cm'),
                ],
              ),
              SizedBox(height: 30),
              _buildProfileListTile('Edit Profil', Icons.person_outline),
              _buildProfileListTile('Notifikasi', Icons.notifications_none),
              _buildProfileListTile('Mode Gelap', Icons.nightlight_round, isSwitch: true),
              _buildProfileListTile('Bahasa', Icons.language),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 16, color: Colors.grey[400]),
        ),
      ],
    );
  }

  Widget _buildProfileListTile(String title, IconData icon, {bool isSwitch = false}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF2C2C2C), // Latar belakang item gelap
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.grey[400]),
        title: Text(title, style: TextStyle(color: Colors.white)),
        trailing: isSwitch
            ? Switch(
                value: true,
                onChanged: (_) {},
                activeColor: Asset.colorPrimaryGreen,
              )
            : Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey[400]),
      ),
    );
  }
}
