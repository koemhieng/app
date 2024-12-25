import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ym_training/components/gview.dart';
import 'package:ym_training/components/type%20of%20course.dart';

class Technical extends StatelessWidget {
  const Technical({super.key});
  
  @override
  Widget build(BuildContext context) {
    final items = [
    {'image': 'assets/Course.png', 'text': ' Video Course', 'color': Colors.blue},
    {'image': 'assets/Lession.png', 'text': 'Lession (PDF)', 'color': Colors.yellow},
    {'image': 'assets/picture.png', 'text': 'Activity', 'color': Colors.red},
   // {'image': 'assets/Item4.png', 'text': 'Report', 'color': const Color.fromARGB(255, 252, 251, 250)},
  ];
    return Scaffold(
appBar: AppBar(
 // title: const Text('Category of HR'),
  actions: [
    IconButton(
      icon: CircleAvatar(
        backgroundImage: AssetImage('assets/user.png'), // Replace with your image
        radius: 30, // Adjust size as needed
      ),
      onPressed: () {
        // Add your action here
        print("Profile icon tapped");
      },
    ),
  ],
),




      body: Column(
  children: [
    // Title in a Container
Container(
  width: double.infinity,
  padding: const EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    color: const Color.fromARGB(221, 188, 104, 231),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2), // Shadow color with opacity
        blurRadius: 18, // Blur effect
        offset: const Offset(0, 4), // Shadow position (x, y)
      ),
    ],
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        "Select Section",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      // IconButton(
      //   icon: const Icon(
      //     Icons.menu,
      //     color: Colors.white,
      //     size: 30,
      //   ),
      //   onPressed: () {
      //     // Handle menu button tap
      //   },
      // ),
    ],
  ),
),
SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.only(
  
    right: 250,
  ),
  child: Text('Hello user ! ',
  style: TextStyle(fontSize: 20),
  ),
),


    // Expanded GridView
    Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(25.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 40.0,
          mainAxisSpacing: 20.0,
          childAspectRatio: 3 / 4,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return StatefulBuilder(
            builder: (context, setState) {
              double scale = 1.0;

              return GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    scale = 0.95; // Shrink card on tap
                  });
                },
                onTapUp: (_) {
                  Future.delayed(const Duration(milliseconds: 200), () {
                    setState(() {
                      scale = 1.0; // Reset after tap release
                    });
                  });
                },
                onTapCancel: () {
                  setState(() {
                    scale = 1.0; // Reset if tap is canceled
                  });
                },
                onTap: () {
                  Get.to(Homepage(title: "Test"));
                },
                child: AnimatedScale(
                  scale: scale,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: Card(
                    color: items[index]['color'] as Color,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                            child: Image.asset(
                              items[index]['image']!.toString(),
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            items[index]['text']!.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    ),
  ],
),
    );
  }
}