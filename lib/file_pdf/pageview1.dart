import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfViewerScreen1 extends StatelessWidget {
  //const PdfViewerScreen({super.key});
   final String pdfPath;
    PdfViewerScreen1({Key? key, required this.pdfPath}) : super(key: key);



   final PdfController12 = PdfControllerPinch(document: PdfDocument.openAsset('assets/E-commerce with wordpress.pdf'));
    //final PdfController13 = PdfControllerPinch(document: PdfDocument.openAsset('assets/E-commerce with wordpress.pdf'));

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('PDF Viewer'),
      ),
      body: PdfViewPinch(controller: PdfController12 ,
        
      ),
    );
  }
}
