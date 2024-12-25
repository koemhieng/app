import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ym_training/components/play_introduction.dart';

class VdoRise extends StatelessWidget {
  const VdoRise({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, String>> videos = [
  {
    'id': '7VmW90esGyU', 
    'title': 'រហូតយើងជួបគ្នាម្តងទៀត, LD Top Khmer Web Series 2020', 
    'image': 'https://img.youtube.com/vi/mlDLQcUN1dM/0.jpg',
    'description': 'An introduction to Yorkmars Yai concepts and tutorials.',
  },
  
  {
    'id': 'dpxrrUO2tDE', 
    'title': 'ទ្រឹស្ដីស្នេហ៍ "HOW TO LOVE" (រឿងពេញ - FULL MOVIE)', 
    'image': 'https://img.youtube.com/vi/QDoruBMmyWA/0.jpg',
    'description': 'Learn how to create flexible layouts in Flutter.'
  },
  {
    'id': 'bHfo54wWyiI', 
    'title': 'រឿង កូរស្នេហ៍សិស្សច្បង/DONT MESS WITH SENIOR-EP1 ( GL Series/Romance)', 
    'image': 'https://img.youtube.com/vi/6wtG8zq4hqg/0.jpg',
    'description': 'Tutorial on building responsive user interfaces in Flutter.'
  },
  
  {
    'id': '0hfNfV_GcCA', 
    'title': 'សម្រាយរឿង ពន្លកស្នេហ៍ដុះក្នុងបេះដូង(មួយរឿងពេញ) |កូនឆ្មាតូច-សម្រាយរឿង ', 
    'image': 'https://img.youtube.com/vi/L74Uhmrg3JU/0.jpg',
    'description': 'A detailed guide on using Firebase services in Flutter.'
  },
    {
    'id': 'bHfo54wWyiI', 
    'title': 'EP01 Qin Fei accidentally met Xing Zhizhi', 
    'image': 'https://img.youtube.com/vi/pD_Tbc6RhAg/0.jpg',
    'description': 'Tutorial on building responsive user interfaces in Flutter.'
  },
  
  {
    'id': '0hfNfV_GcCA', 
    'title': 'Never Forget to Love You 01（Zhao Lusi, Liu Te）', 
    'image': 'https://img.youtube.com/vi/U1We7ZHjjzQ/0.jpg',
    'description': 'A detailed guide on using Firebase services in Flutter.'
  },
  
];
    return  Scaffold(
    appBar: AppBar(
      
      // title: const Text(
      //   'វិឌីអូ និយាយអំពីការណែនាំ',
      //   style: TextStyle(
      //     fontSize: 24,
      //     fontWeight: FontWeight.bold,
      //     color: Color.fromARGB(255, 24, 23, 22)
      //   ),
      // ),
      backgroundColor: const Color.fromARGB(255, 211, 132, 21), // Customize the background color
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
