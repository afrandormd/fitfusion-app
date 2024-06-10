import 'package:fitfusion_app/config/assets.dart';
import 'package:flutter/material.dart';

class Program extends StatelessWidget {
  const Program({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Program',
          style: TextStyle(
            color: Asset.colorPrimaryGreen, // Set the text color to your desired color
          ),
        ),
        backgroundColor: Colors.transparent, // Make the AppBar background transparent
        elevation: 0, // Remove the AppBar shadow
      ),
      backgroundColor: Color(0xFF1E1E1E), // Latar belakang gelap
      // backgroundColor: Colors.black, // Set the background color to black or any dark color you prefer
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row with 7 circles
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(7, (index) {
                return Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}', // Display numbers from 1 to 7
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20), // Spacing between rows

            // Column with additional rows
            // baris 1
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Number of rows including the first one
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0), // Spacing between rows
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0), // Add border radius to the main container
                      child: Container(
                        color: Color(0xFF313131), // Set the container color to #313131
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Column 1 with an image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0), // Add border radius to the image container
                              child: Image.asset(
                                'assets/images/pull-up-exercices.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Column 2 with text
                            Text(
                              'Otot Punggung tanpa Alat',
                              style: TextStyle(color: Colors.white), // Change text color to white
                            ),
                            // Column 3 with text
                            Text(
                              '15 menit',
                              style: TextStyle(color: Asset.colorPrimaryGreen), // Change text color to white
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // baris 2
            // Column with additional rows
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Number of rows including the first one
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0), // Spacing between rows
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0), // Add border radius to the main container
                      child: Container(
                        color: Color(0xFF313131), // Set the container color to #313131
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Column 1 with an image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0), // Add border radius to the image container
                              child: Image.asset(
                                'assets/images/abs-exercices.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Column 2 with text
                            Text(
                              'Latihan Perut Rutin',
                              style: TextStyle(color: Colors.white), // Change text color to white
                            ),
                            // Column 3 with text
                            Text(
                              '10 menit',
                              style: TextStyle(color: Asset.colorPrimaryGreen), // Change text color to white
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Baris 3
            // Column with additional rows
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Number of rows including the first one
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0), // Spacing between rows
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0), // Add border radius to the main container
                      child: Container(
                        color: Color(0xFF313131), // Set the container color to #313131
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Column 1 with an image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0), // Add border radius to the image container
                              child: Image.asset(
                                'assets/images/push-up-exercices.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Column 2 with text
                            Text(
                              'Otot Dada tanpa Alat',
                              style: TextStyle(color: Colors.white), // Change text color to white
                            ),
                            // Column 3 with text
                            Text(
                              '20 menit',
                              style: TextStyle(color: Asset.colorPrimaryGreen), // Change text color to white
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Baris 4
            // Column with additional rows
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Number of rows including the first one
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0), // Spacing between rows
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0), // Add border radius to the main container
                      child: Container(
                        color: Color(0xFF313131), // Set the container color to #313131
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Column 1 with an image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0), // Add border radius to the image container
                              child: Image.asset(
                                'assets/images/leg-exercices.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Column 2 with text
                            Text(
                              'Otot Kaki tanpa Alat',
                              style: TextStyle(color: Colors.white), // Change text color to white
                            ),
                            // Column 3 with text
                            Text(
                              '15 menit',
                              style: TextStyle(color: Asset.colorPrimaryGreen), // Change text color to white
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Baris 5
            // Column with additional rows
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Number of rows including the first one
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0), // Spacing between rows
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0), // Add border radius to the main container
                      child: Container(
                        color: Color(0xFF313131), // Set the container color to #313131
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Column 1 with an image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0), // Add border radius to the image container
                              child: Image.asset(
                                'assets/images/push-up-exercices.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Column 2 with text
                            Text(
                              'Otot Dada Keseluruhan',
                              style: TextStyle(color: Colors.white), // Change text color to white
                            ),
                            // Column 3 with text
                            Text(
                              '30 menit',
                              style: TextStyle(color: Asset.colorPrimaryGreen), // Change text color to white
                            ),
                          ],
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
    );
  }
}
