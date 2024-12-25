import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ym_training/components/category%20of%20lesson.dart';
import 'package:ym_training/components/list_lesson2.dart';
import 'package:ym_training/components/list_lesson3.dart';
import 'package:ym_training/components/rise_list.dart';
import 'package:ym_training/file_pdf/pageview1.dart';
import 'package:ym_training/file_pdf/pdfview.dart';

class lesson_induction extends StatefulWidget {
  const lesson_induction({super.key});

  @override
  State<lesson_induction> createState() => _lesson_inductionState();
}

class _lesson_inductionState extends State<lesson_induction> {
  final List<Map<String, String>> lessons = [
    {
      'image': 'assets/file.png',
      'title': 'Lesson Induction 1',
      'pdf': 'assets/pdf1.pdf',
    },
    //     {
    //   'image': 'assets/file.png',
    //   'title': 'Lesson Induction 2',
    //   'pdf': 'assets/pfd3.pdf',
    // },

    // {
    //   'image': 'assets/file.png',
    //   'title': 'Lesson Rise 1',
    //   'pdf': 'assets/rise_lesson.pdf',
    // },
    // {
    //   'image': 'assets/file.png',
    //   'title': 'Lesson Rise 2',
    //   'pdf': 'assets/test.pdf',
    // },
    // {
    //   'image': 'assets/file.png', // Add your image path here
    //   'title': 'lesson C-TPAT',
    // },
    // {
    //   'image': 'assets/file.png', // Add your image path here
    //   'title': 'lesson C-TPAT',
    // },
    // {
    //   'image': 'assets/file.png', // Add your image path here
    //   'title': 'lesson C-TPAT',
    // },
  ];

  // void _handleMenuSelection(String value) {
  //   switch (value) {
  //     case 'Lesson':
  //       // Navigate to Induction page using GetX
  //       Get.to(() => lesson_induction2());
  //       break;
  //     case 'Rise':
  //       // Navigate to Rise page using GetX
  //       Get.to(() => Lesson());
  //       break;
  //     case 'C-TPAT':
  //       // Navigate to C-TPAT page using GetX
  //       Get.to(() => lesson_induction3());
  //       break;
  //     default:
  //       print('Unknown option selected');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 134, 40),
      appBar: AppBar(
       // title: const Text('Lessons List'),
        // actions: [
        //   PopupMenuButton<String>(
        //     onSelected: _handleMenuSelection,
        //     itemBuilder: (BuildContext context) {
        //       return [
        //         const PopupMenuItem<String>(
        //           value: 'Lesson',
        //           child: Text('Lesson Rise'),
        //         ),
        //         const PopupMenuItem<String>(
        //           value: 'Rise',
        //           child: Text('Induction Lessons'),
        //         ),
        //         const PopupMenuItem<String>(
        //           value: 'C-TPAT',
        //           child: Text('C-TPAT Lessons'),
        //         ),
        //       ];
        //     },
        //   ),
        // ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12.0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  lessons[index]['image']!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Center(
                child: Text(
                  lessons[index]['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                final pdfPath = lessons[index]['pdf'];
                if (pdfPath != null) {
                  Get.to(() => PdfViewerScreen(pdfPath: pdfPath));
                } else {
                  Get.snackbar(
                    'No PDF Available',
                    'This lesson does not have an associated PDF.',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
