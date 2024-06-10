import 'dart:ui'; // Import untuk ImageFilter
import 'package:fitfusion_app/config/assets.dart';
import 'package:flutter/material.dart';

class LupaSandi extends StatelessWidget {
  const LupaSandi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lupa Kata Sandi'),
        backgroundColor: Asset.colorPrimaryGreen,
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_image.png'), // Pastikan path gambar benar
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black.withOpacity(0.3), // Optional: untuk menambahkan warna overlay
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Reset Kata Sandi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Sesuaikan warna teks agar terlihat di atas background
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white), // Sesuaikan warna hint
                      prefixIcon: Icon(Icons.email, color: Colors.white), // Sesuaikan warna icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white), // Sesuaikan warna border
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.3), // Warna latar belakang input field
                    ),
                    style: TextStyle(color: Colors.white), // Warna teks input
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tampilkan notifikasi ketika tombol ditekan
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Link reset kata sandi telah dikirim ke email Anda'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                      // Implementasi reset kata sandi
                    },
                    child: Text('Kirim Link Reset'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Asset.colorPrimaryGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
