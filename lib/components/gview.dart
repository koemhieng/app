import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package
import 'package:ym_training/components/admin.dart';
import 'package:ym_training/components/csr_page.dart';
import 'package:ym_training/components/financial.dart';
import 'package:ym_training/components/ga.dart';
import 'package:ym_training/components/hr_page.dart';
import 'package:ym_training/components/ie_page.dart';
import 'package:ym_training/components/logistic.dart';
import 'package:ym_training/components/mr_page.dart';
import 'package:ym_training/components/ppc.dart';
import 'package:ym_training/components/sewing.dart';
import 'package:ym_training/components/shipping.dart';
import 'package:ym_training/components/technical.dart';

Widget gview() {
  final items = [
    {'image': 'assets/fast-delivery.png', 'text': 'Shipping', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/communication.png', 'text': 'General Affairs', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/csr1.png', 'text': 'CSR', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/technical-support.png', 'text': 'Technical', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/sewing.png', 'text': 'Sewing', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/logistics.png', 'text': 'Logistic', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/pay-per-click.png', 'text': 'PPC', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/administrator.png', 'text': 'Admin', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/finance.png', 'text': 'Financial', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/warehouse.png', 'text': 'Raw Material Warehouse', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/qc.png', 'text': 'QC', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/washing-machine.png', 'text': 'Washing', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/merchandise.png', 'text': 'Merchandising', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/hr.png', 'text': 'HR', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/cbsa.png', 'text': 'CBSA', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/cutting.png', 'text': 'Cutting', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/iron.png', 'text': 'Ironing', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/restriction.png', 'text': 'TPM', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/procurer.png', 'text': 'Purchasing', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/qa.png', 'text': 'QA', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/sample.png', 'text': 'Sample', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/scc.png', 'text': 'SCC', 'color': const Color.fromARGB(255, 251, 246, 242)},
    {'image': 'assets/package.png', 'text': 'Packing', 'color': const Color.fromARGB(255, 251, 246, 242)},
  ];

  return GridView.builder(
    padding: const EdgeInsets.all(20.0),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 40.0,
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
              // Navigate using GetX
              switch (items[index]['text']) {
                case 'CSR':
                  Get.to(() => CsrPage());
                  break;
                case 'HR':
                  Get.to(() => HrPage());
                  break;
                case 'MR':
                  Get.to(() => MrPage());
                  break;
                case 'IE':
                  Get.to(() => IePage());
                  break;
                case 'Shipping':
                  Get.to(() => Shipping());
                  break;
                   case 'General Affairs':
                  Get.to(() => General_affairs());
                  break;
                      case 'Technical':
                  Get.to(() => Technical());
                  break;
                       case 'Sewing':
                  Get.to(() => Sewing());
                  break;
                       case 'PPC':
                  Get.to(() => Ppc());
                  break;
                           case 'Admin':
                  Get.to(() => Admin());
                  break;
                               case 'Financial':
                  Get.to(() => Financial());
                  break;
                  
                  
                default:
                  Get.snackbar('Notice', 'Page not implemented for ${items[index]['text']}');
              }
            },
            child: AnimatedScale(
              scale: scale,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              child: Card(
                color: items[index]['color'] as Color,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
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
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 7, 7, 7),
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
  );
}
