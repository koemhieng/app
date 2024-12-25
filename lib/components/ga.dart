import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ym_training/components/gview.dart';
import 'package:ym_training/components/type%20of%20course.dart';

class General_affairs extends StatelessWidget {
  const General_affairs({super.key});
  
  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'image': 'assets/vdo list.png',
        'text': 'Videos Course',
        'color': const Color.fromARGB(255, 249, 246, 244)
      },
      {
        'image': 'assets/file.png',
        'text': 'Lesson (PDF)',
        'color': const Color.fromARGB(255, 254, 253, 252)
      },
      {
        'image': 'assets/picture.png',
        'text': 'Activity',
        'color': const Color.fromARGB(255, 250, 248, 246)
      },
    ];
   return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 139, 11),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/user.png'),
              radius: 30,
            ),
            onPressed: () {
              print("Profile icon tapped");
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(247, 237, 160, 59),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 18,
                  offset: const Offset(0, 4),
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
                    color: Color.fromARGB(255, 3, 2, 4),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              'Hello user ! ',
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 2, 1, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(25.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 4 / 5,
              ),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    double scale = 1.0;

                    return GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          scale = 0.95;
                        });
                      },
                      onTapUp: (_) {
                        Future.delayed(const Duration(milliseconds: 200), () {
                          setState(() {
                            scale = 1.0;
                          });
                        });
                      },
                      onTapCancel: () {
                        setState(() {
                          scale = 1.0;
                        });
                      },
                      onTap: () {
                        // Use the dynamic navigation function
                        // Get.to(()=>);
                      },
                      child: AnimatedScale(
                        scale: scale,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        child: Card(
                          color: items[index]['color'] as Color,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Image.asset(
                                      items[index]['image']!.toString(),
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  items[index]['text']!.toString(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 20, 1, 1),
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