import 'package:flutter/material.dart';
import 'package:mhgap_urdu/components/arrow_navigation_container.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:mhgap_urdu/utils/texts.dart';
import 'package:pdfx/pdfx.dart';

class EmergencyDiagnosisScreenPdf extends StatefulWidget {
  const EmergencyDiagnosisScreenPdf({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EmergencyDiagnosisScreenPdfState createState() =>
      _EmergencyDiagnosisScreenPdfState();
}

class _EmergencyDiagnosisScreenPdfState extends State<EmergencyDiagnosisScreenPdf> {
  late PdfControllerPinch _pdfController;

  @override
  void initState() {
    super.initState();
    _pdfController = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/files/output_long_page.pdf'),
    );
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        children: <Widget>[
          const ArrowNavigationContainer(
            text: EmergencyDiagnosisText.navigationText,
            showBackButton: true,
          ),
          Expanded(
            child: PdfViewPinch(
              controller: _pdfController,
            ),
          ),
        ],
      ),
    );
  }
}
