import 'package:fitfusion_app/config/assets.dart';
import 'package:flutter/material.dart';

class Olahraga extends StatelessWidget {
  const Olahraga({super.key});

  @override
  Widget build(BuildContext context) {
    // Data untuk gerakan populer
    final List<Map<String, String>> gerakanPopuler = [
      {
        'name': 'Push Up',
        'image': 'assets/images/push-up-exercices.jpg'
      },
      {
        'name': 'Pull Up',
        'image': 'assets/images/pull-up-exercices.jpg'
      },
      {
        'name': 'Crunch',
        'image': 'assets/images/abs-exercices.jpg'
      },
      {
        'name': 'Squat',
        'image': 'assets/images/leg-exercices.jpg'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Olahraga',
          style: TextStyle(
            color: Asset.colorPrimaryGreen, // Set the text color to your desired color
          ),
        ),
        backgroundColor: Colors.transparent, // Make the AppBar background transparent
        elevation: 0, // Remove the AppBar shadow
      ),
      // backgroundColor: Colors.black, // Set the background color to black or any dark color you prefer
      backgroundColor: Color(0xFF1E1E1E), // Latar belakang gelap
      body: Container(
        // color: Colors.black,
        color: Color(0xFF1E1E1E), // Latar belakang gelap
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Banner "Ayo mulai Olahraga!"
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/gym.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.transparent
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Ayo mulai Olahraga!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Judul "Gerakan Populer"
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Gerakan Populer',
                  style: TextStyle(
                    color: Asset.colorPrimaryGreen,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Grid Gerakan Populer
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: gerakanPopuler.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(gerakanPopuler[index]['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.transparent
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            gerakanPopuler[index]['name']!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
