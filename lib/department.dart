import 'package:flutter/material.dart';
import 'package:ym_training/components/gview.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    

  // title: const Text("App Title"),
  actions: [
    GestureDetector(
      onTap: () {
        // Action when icon is tapped
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/user (1).png', // Path to your asset
          width: 100,
          height: 50,
        ),
      ),
    ),
  ],


),
backgroundColor: const Color.fromARGB(255, 224, 139, 11),

      
       body: Column(

        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Center(
                child: Center(
                
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 100,bottom: 20),
                        child: Center(
                          child: const Text(
                                            " Show All Departments",
                                            style: TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 7, 8, 10),
                                              shadows: [
                   
                                              ],
                                            ),
                                          ),
                                        
                        ),
                      ),
                
                     // const SizedBox(height: ), // Spacing between text and grid
                      Expanded(
                        child: gview(), // GridView component
                      ),
                    ],
                  ),
                ),
              
            ),
          ),
        ],
      ),
    );
  }
}
