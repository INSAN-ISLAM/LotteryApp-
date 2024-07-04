import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
class SCAN extends StatefulWidget {
  const SCAN({Key? key}) : super(key: key);

  @override
  State<SCAN> createState() => _SCANState();
}

class _SCANState extends State<SCAN> {
  String _scanResult = 'Unknown';

  Future<void> scanTicket() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", true, ScanMode.BARCODE);
    setState(() {
      _scanResult = barcodeScanRes != '-1' ? barcodeScanRes : 'Failed to scan';
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Scan result: $_scanResult\n'),
            ElevatedButton(
              onPressed: scanTicket,
              
              child: Text('Start Scan'),
            ),
          ],
        ),
      ),
    );
  }
}







//
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:flutter/material.dart';
//
// class ScanTicketScreen extends StatefulWidget {
//   @override
//   _ScanTicketScreenState createState() => _ScanTicketScreenState();
// }
//
// class _ScanTicketScreenState extends State<ScanTicketScreen> {
//   String _scanResult = 'Unknown';
//
//   Future<void> scanTicket() async {
//     String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//         "#ff6666", "Cancel", true, ScanMode.BARCODE);
//     setState(() {
//       _scanResult = barcodeScanRes != '-1' ? barcodeScanRes : 'Failed to scan';
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Scan Ticket')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Scan result: $_scanResult\n'),
//             ElevatedButton(
//               onPressed: scanTicket,
//               child: Text('Start Scan'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
