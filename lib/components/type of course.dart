import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:ym_training/components/inductionVdo.dart';
import 'package:ym_training/components/introduction.dart';
import 'package:ym_training/components/category%20of%20lesson.dart';
import 'package:ym_training/components/rise_list.dart';
import 'package:ym_training/components/Vdo_inductio.dart';
import 'package:ym_training/components/vdo_ctpat.dart';
import 'package:ym_training/components/vdo_rise.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key, required String title});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   'Type of Course',
        //   style: TextStyle(
        //       fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        // ),
        elevation: 50,
        // actions: [
        //   // IconButton on the top-right corner
        //   IconButton(
        //     icon: CircleAvatar(
        //       radius: 30, // Adjust the radius for the size of the circle
        //       // backgroundColor: const Color.fromARGB(255, 211, 132, 93), // Background color of the circle
        //       child: const Icon(
        //         Icons.category,
        //         size: 30, // Size of the icon
        //         color: Color.fromARGB(255, 10, 10, 10), // Icon color
        //       ),
        //     ),
        //     tooltip: 'Settings',
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Column(
        children: [
          // Unscrollable Container
          Material(
            elevation: 60, // Adjust the elevation as needed
            // shadowColor: const Color.fromARGB(255, 161, 33, 33), // Optional: Set the shadow color
            borderRadius:
                BorderRadius.circular(10), // Optional: Add rounded corners
            child: Container(
              padding: const EdgeInsets.all(30.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 224, 139, 11),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Image.asset(
                      'assets/webinar.png',
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),
          // Scrollable Cards
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    // First Card
                    Card(
                      child: SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: ListTile(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const vdo_induction(),
                                ),
                              ),
                              contentPadding: const EdgeInsets.all(10),
                              leading: Image.asset(
                                'assets/training.png',
                                width: 70,
                                height: 70,
                              ),
                              title: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'INDUCTION',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 27, 10, 10),
                                  ),
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward, // Arrow forward icon
                                size: 20, // Adjust size as needed
                                color: Color.fromARGB(
                                    255, 29, 14, 14), // Icon color
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Second Card
                    Card(
                      child: SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: ListTile(
                              onTap: () {
                                Get.to(VdoRise());
                              },
                              contentPadding: const EdgeInsets.all(10),
                              leading: Image.asset(
                                'assets/business-development.png',
                                width: 70,
                                height: 70,
                              ),
                              title: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'RISE',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 29, 14, 14),
                                  ),
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward, // Arrow forward icon
                                size: 20, // Adjust size as needed
                                color: Color.fromARGB(
                                    255, 29, 14, 14), // Icon color
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                    // Third Card
                    Card(
                      child: SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: ListTile(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VdoCtpat(),
                                ),
                              ),
                              contentPadding: const EdgeInsets.all(10),
                              leading: Image.asset(
                                'assets/guard.png',
                                width: 70,
                                height: 70,
                              ),
                              title: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'C-TPAT',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 24, 13, 13),
                                  ),
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward, // Arrow forward icon
                                size: 20, // Adjust size as needed
                                color: Color.fromARGB(
                                    255, 29, 14, 14), // Icon color
                              ),
                            ),
                          ),
                        ),
                      ),
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
