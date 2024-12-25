import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ym_training/components/list_lesson.dart';
import 'package:ym_training/components/list_lesson2.dart';
import 'package:ym_training/components/list_lesson3.dart';

class Lesson extends StatelessWidget {
  const Lesson({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'image': 'assets/training.png',
        'title': 'lesson Induction',
      },
      {
        'image': 'assets/business-development.png',
        'title': 'Lesson Rise',
      },
      {
        'image': 'assets/guard.png',
        'title': 'Lesson C-TPAT',
      },
      // Add more items here as needed
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 141, 38),
      appBar: AppBar(
       // title: const Text("Image ListView"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 14),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12.0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  items[index]['image']!,
                  width: 50,
                  height: 50,
                  
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                items[index]['title']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              onTap: () {
               switch(index){
                case 0:
                  Get.to(lesson_induction());
                  break;
                case 1:
                  Get.to(ListLesson2());
                  break;
                case 2:
                  Get.to(ListLesson3());
                default:
                  // print("didov");
                  break;
               }
              },
          
            ),
            
          );
        },
      ),
    );
  }
}

