import 'package:flutter/material.dart';
import 'package:ym_training/department.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 70,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensure centering
                children: [
                  // Replace Icon with an Image
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 207, 134, 40), // Shadow color
                          blurRadius: 10, // Shadow blur radius
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/Training3.png', // Path to your image asset
                            width:80, // Set the width for the image
                            height: 60, // Set the height for the image
                          ),
                          
                          // Padding(
                          //   padding: const EdgeInsets.only(right: 0,left: 200),
                          //   child: Image.asset(
                          //     'assets/analysis.png', // Path to your image asset
                          //     width:50, // Set the width for the image
                          //     height: 40, // Set the height for the image
                          //   ),
                          // ),
                          SizedBox(width: 30,),
                          Text(
                            "Wellcome To Training App ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 247, 243, 240),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  const SizedBox(height: 30), // Spacing below the icon

                  // Text below the image
                  const Text(
                    'A training program refers to a structured and organized set of activities designed to develop or enhance the knowledge, skills, and competencies of individuals or groups in a specific area or subject.', 
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 56, 39, 26),
                      shadows: [
                        // Shadow(
                        //   color: Colors.black, // Shadow color
                        //   offset: Offset(2, 2), // Shadow offset (x, y)
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100), // Spacing below the image and text
            Column(
              children: [
                Image.asset(
                  'assets/web.png',
                  width: 340,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 60), // Spacing between image and text
                // const Text(
                //   'Training is the ability to picture something in your mind, somewhat like daydreaming. It is also used in sport.',
                //   style: TextStyle(fontSize: 16, color: Colors.black),
                //   textAlign: TextAlign.center,
                // ),
                const SizedBox(height: 20), // Spacing before the button
                Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Category()),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 207, 134, 40),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "Click Now",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 30),
          Icon(
            Icons.arrow_forward,
            size: 30,
          ), // Add the arrow icon
        ],
      ),
    ),
  ),
),

              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 236, 177, 134),
    );
  }
}
