import 'package:fitfusion_app/screen/user/home.dart';
import 'package:flutter/material.dart';
import 'package:fitfusion_app/config/assets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Asset.colorPrimaryGreen.withOpacity(0.0), // Menetapkan tingkat transparansi ke 50%
                  ),
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(
                    left: 20,
                    bottom: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'FitFusion',
                        style: TextStyle(
                          fontSize: 50,
                          color: Asset.colorPrimaryGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 800,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.059999999329447746),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Form(
                    child: Padding(
                      padding: EdgeInsets.all(50),
                      child: Column(
                        children: [
                          TextFormField(
                            // TextFormField untuk username
                            decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.3), // Transparansi 30%
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            // TextFormField untuk password
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.3), // Transparansi 30%
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Asset.colorPrimaryGreen, // Transparansi 30%
                            ),
                            width: double.infinity,
                            child: InkWell(
                              onTap: () {
                                // Implementasi untuk tombol login
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => Home()),
                                );
                              },
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 12,
                                ),
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Implementasi untuk lupa kata sandi
                            },
                            child: Text(
                              'Lupa Kata Sandi?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Implementasi untuk belum punya akun
                            },
                            child: Text(
                              'Belum Punya Akun? Daftar Disini',
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
