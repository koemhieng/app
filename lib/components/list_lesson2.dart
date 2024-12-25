import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ym_training/file_pdf/pdfview.dart';

class ListLesson2 extends StatefulWidget {
  const ListLesson2({super.key});

  @override
  State<ListLesson2> createState() => _ListLesson2State();
}

class _ListLesson2State extends State<ListLesson2> {
  final List<Map<String, String>> lessons = [
    {
      'image': 'assets/file.png',
      'title': 'Lesson Rise 1',
      'pdf': 'assets/rise_lesson.pdf',
    },
    // {
    //   'image': 'assets/file.png',
    //   'title': 'Lesson Rise 2',
    //   'pdf': 'assets/pdf3.pdf',
    // },
    // {
    //   'image': 'assets/file.png',
    //   'title': 'Lesson Rise 2111111111111',
    //   'pdf': 'assets/E-commerce with wordpress.pdf',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 134, 40),
      appBar: AppBar(
        //title: const Text('Lessons List'),
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
                  // Fetch the correct PDF path dynamically
                  final String pdfPath = lessons[index]['pdf']!;
                  // Debugging the PDF path
                  print("Navigating to PDF: $pdfPath");
                  // Navigate to PdfViewerScreen with the selected PDF
                  Get.to(() => PdfViewerScreen(pdfPath: pdfPath));
                }
                ),
          );
        },
      ),
    );
  }
}
