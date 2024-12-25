import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ym_training/components/play_introduction.dart';

class vdo_induction extends StatelessWidget {
  const vdo_induction({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, String>> videos = [
  {
    'id': '7VmW90esGyU', 
    'title': 'Noly Records Music Playlist ( Chill / Relaxing / Sweetie )', 
    'image': 'https://img.youtube.com/vi/yIMMJ7qQROo/0.jpg',
    'description': 'An introduction to Yorkmars Yai concepts and tutorials.',
  },
  {
    'id': 'cR_zhEr6Va0', 
    'title': 'វង្វេងក្នុងកែវភ្នែកអូន | Lost In Your Eyes វង្វេងក្នុងកែវភ្នែកអូន lyric , khmer song lyric', 
    'image': 'https://img.youtube.com/vi/uHHDmkN--QI/0.jpg',
    'description': 'A beginner’s guide to Flutter basics and introduction.'
  },
  {
    'id': 'dpxrrUO2tDE', 
    'title': 'Shape of You - Ed Sheeran (Lyrics)', 
    'image': 'https://img.youtube.com/vi/0IO4SKpaD2E/0.jpg',
    'description': 'Learn how to create flexible layouts in Flutter.'
  },
  {
    'id': 'bHfo54wWyiI', 
    'title': 'JENNIE - You & Me + SOLO', 
    'image': 'https://img.youtube.com/vi/jbAZNn9DZEo/0.jpg',
    'description': 'Tutorial on building responsive user interfaces in Flutter.'
  },
  {
    'id': '0hfNfV_GcCA', 
    'title': 'BLACKPINK - ALL SOLO ERAS + Pink Venom + Shut Down', 
    'image': 'https://img.youtube.com/vi/HjbuiosXTDc/0.jpg',
    'description': 'A detailed guide on using Firebase services in Flutter.'
  },
    {
    'id': '0hfNfV_GcCA', 
    'title': '(Playlist) Cupid - Twin Ver - FIFTY FIFTY... The Weeknd, TV Girl [Lyrics]', 
    'image': 'https://img.youtube.com/vi/h4y4z3q27Es/0.jpg',
    'description': 'A detailed guide on using Firebase services in Flutter.'
  },
];
    return  Scaffold(
    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 216, 137, 17),
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
      elevation: 30.0,  // Optional: add a shadow for the app bar
    ),
    body: ListView.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
        var video = videos[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 251, 249, 249), // Background color same as scaffold
              border: Border.all(color: const Color.fromARGB(255, 14, 13, 12)), // Border color
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
                      borderRadius: BorderRadius.circular(2.0), // Rounded corners for the image
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
                          color: const Color.fromARGB(255, 15, 13, 13),
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
