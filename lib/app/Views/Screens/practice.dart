// import 'package:flutter/material.dart';
// import 'auth_service.dart';
// import 'package:flutter_country_picker/flutter_country_picker.dart';
//
// class AuthScreen extends StatefulWidget {
//   @override
//   _AuthScreenState createState() => _AuthScreenState();
// }
//
// class _AuthScreenState extends State<AuthScreen> {
//   final AuthService _authService = AuthService();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _codeController = TextEditingController();
//   Country _selectedCountry = Country.IN; // Default to India
//   String? _verificationId;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           CountryPicker(
//             showDialingCode: true,
//             onChanged: (Country country) {
//               setState(() {
//                 _selectedCountry = country;
//               });
//             },
//             selectedCountry: _selectedCountry,
//           ),
//           TextField(
//             controller: _phoneController,
//             decoration: InputDecoration(labelText: 'Phone Number'),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               String phoneNumber = '+${_selectedCountry.dialingCode}${_phoneController.text}';
//               await _authService.verifyPhoneNumber(
//                 phoneNumber,
//                     (verificationId) {
//                   setState(() {
//                     _verificationId = verificationId;
//                   });
//                 },
//               );
//             },
//             child: Text('Verify Phone Number'),
//           ),
//           TextField(
//             controller: _codeController,
//             decoration: InputDecoration(labelText: 'Verification Code'),
//           ),
//           ElevatedButton(
//             onPressed: _verificationId == null
//                 ? null
//                 : () async {
//               User? user = await _authService.signInWithPhoneNumber(
//                 _verificationId!,
//                 _codeController.text,
//               );
//               if (user != null) {
//                 print('Sign in successful: ${user.phoneNumber}');
//               } else {
//                 print('Sign in failed');
//               }
//             },
//             child: Text('Sign In'),
//           ),
//         ],
//       ),
//     );
//   }
// }
