import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ym_training/components/play_introduction.dart';

class VdoCtpat extends StatefulWidget {
  const VdoCtpat({super.key});

  @override
  State<VdoCtpat> createState() => _VdoCtpatState();
}

class _VdoCtpatState extends State<VdoCtpat> {
    List<Map<String, String>> videos = [
  {
    'id': '7VmW90esGyU', 
    'title': 'រឿងយើងនៅតែបន្ត', 
    'image': 'https://img.youtube.com/vi/jrHWfn_EZbY/0.jpg',
    'description': 'An introduction to Yorkmars Yai concepts and tutorials.',
  },
    {
    'id': '7VmW90esGyU', 
    'title': 'Reno12 Series Short Film បងប្អូនស៊ូណាមិ 2024 Full Short Film Final', 
    'image': 'https://img.youtube.com/vi/5r7v1bqvgo0/0.jpg',
    'description': 'An introduction to Yorkmars Yai concepts and tutorials.',
  },
    {
    'id': '7VmW90esGyU', 
    'title': 'កោះស្តេចសាកថ្មជីវិត☀️🌴(ស្ទូចត្រីបានច្រើនណាស់🎣)', 
    'image': 'https://img.youtube.com/vi/ysiP91GF2aE/0.jpg',
    'description': 'An introduction to Yorkmars Yai concepts and tutorials.',
  },
    {
    'id': '7VmW90esGyU', 
    'title': 'ឆ្នេរសមុទ្រកោះកុងក្រៅ | Koh kong Krao Vlog', 
    'image': 'https://img.youtube.com/vi/0IQx7WzMsA8/0.jpg',
    'description': 'An introduction to Yorkmars Yai concepts and tutorials.',
  },
  //   {
  //   'id': 'nCcWnmrnGhQ', 
  //   'title': 'Stateful vs Stateless Widgets', 
  //   'image': 'https://img.youtube.com/vi/nCcWnmrnGhQ/0.jpg',
  //   'description': 'Understand the difference between Stateful and Stateless widgets in Flutter.'
  // },
  // {
  //   'id': 'J_L9G5p6ur8', 
  //   'title': 'Flutter for Enterprise Applications', 
  //   'image': 'https://img.youtube.com/vi/J_L9G5p6ur8/0.jpg',
  //   'description': 'Learn how to build enterprise-grade applications using Flutter.'
  // },
  // {
  //   'id': 'jFsuvVdbs3Q', 
  //   'title': 'Flutter Multi-Platform Support', 
  //   'image': 'https://img.youtube.com/vi/jFsuvVdbs3Q/0.jpg',
  //   'description': 'Explore Flutter\'s multi-platform support and capabilities.'
  // }
    ];
  
  @override

  Widget build(BuildContext context) {
    
     return  Scaffold(
    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 202, 133, 29),
      // title: const Text(
      //   'វិឌីអូ និយាយអំពីការណែនាំ',
      //   style: TextStyle(
      //     fontSize: 24,
      //     fontWeight: FontWeight.bold,
      //     color: Color.fromARGB(255, 24, 23, 22)
      //   ),
      // ),
      // backgroundColor: const Color.fromARGB(255, 249, 250, 247), // Customize the background color
      centerTitle: true,  // Center the title
      elevation: 4.0,  // Optional: add a shadow for the app bar
    ),
    body: ListView.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
        var video = videos[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 251, 249, 249), // Background color same as scaffold
              border: Border.all(color: const Color.fromARGB(255, 34, 33, 33)), // Border color
              borderRadius: BorderRadius.circular(10.0), // Border radius for rounded corners
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0), // Same border radius for the clip effect
              child: CupertinoButton(
                padding: EdgeInsets.all(20.0), // Padding inside the button for better layout
                onPressed: () {
                  // Get.to(() => VideoPlayerScreen(
                  //   videoId: video['id']!,
                  //   description: video['description']!, // Pass description
                  // ));

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoPlayerScreen(
                    videoId: video['id']!,
                    description: video['description']!, // Pass description
                  )  ));
                },
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0), // Rounded corners for the image
                      child: Image.network(
                        video['image']!,
                        width: 140, // Make the image smaller
                        height: 80, // Make the image smaller
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10), // Space between the image and the text
                    Expanded(
                      child: Text(
                        video['title']!,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 35, 35, 35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
}