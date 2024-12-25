import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfViewerScreen extends StatelessWidget {
  final String pdfPath;

  PdfViewerScreen({Key? key, required this.pdfPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pdfController = PdfControllerPinch(
      document: PdfDocument.openAsset(pdfPath),
    );

    return Scaffold(
      appBar: AppBar(
    
      ),
      body: PdfViewPinch(
        controller: pdfController,
      ),
    );
  }
}
