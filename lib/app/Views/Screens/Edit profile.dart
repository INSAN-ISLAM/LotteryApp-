
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/App_TextField.dart';
import '../Widgets/ElevatedButton.dart';
import '../Widgets/TextStyle.dart';
import 'LogInPage.dart';


class EditScreen extends StatefulWidget {
  EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}
class _EditScreenState extends State<EditScreen> {
  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _NameETController = TextEditingController();
  final TextEditingController _class_NameETController = TextEditingController();
  final TextEditingController _mobileETController = TextEditingController();
  final TextEditingController _bloodETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();

  //XFile? pickedImage;
  //String? base64Image;


  // Future<void> updateProfile() async {
  //
  //   if (imgUrl!.isEmpty) {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text('Url is a empty')));
  //     return;
  //   }
  //
  //   try {
  //
  //
  //     User? user = FirebaseAuth.instance.currentUser;
  //     if (user != null) {
  //
  //       print(user.uid);
  //       final result=FirebaseFirestore.instance.collection('Check').doc(user.uid).update({
  //         'name': _NameETController.text,
  //         'mobile': _mobileETController.text,
  //         'email': _emailETController.text,
  //         'Blood': _bloodETController.text,
  //         'Class Name': _class_NameETController.text,
  //         'password': int.tryParse(_passwordETController.text) ?? 0,
  //         'image':  imgUrl ?? ''
  //       });
  //
  //
  //
  //
  //
  //
  //     }
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //     // final result=FirebaseFirestore.instance.collection('Check').doc('0gfYD4SPVODjcDQZufb5').update({
  //     //   'name': _NameETController.text,
  //     //   'mobile': _mobileETController.text,
  //     //   'email': _emailETController.text,
  //     //   'Blood': _bloodETController.text,
  //     //   'ClassName': _class_NameETController.text,
  //     //   'password': int.tryParse(_passwordETController.text) ?? 0,
  //     //   'image':  imgUrl ?? ''
  //     // });
  //
  //     //rint('User signed up: ${result.Check!.uid}');
  //
  //   } catch (e) {
  //     // Error occurred during signup
  //     print('Error signing up: $e');
  //     // showSnackBarMessage(context as BuildContext, 'Registration Failed! Try again', true);
  //   }
  // }
  String? imgUrl;
  String? file;
  // uploadToStorage() {
  //   FileUploadInputElement input = FileUploadInputElement();
  //   input.accept = 'image*/';
  //   FirebaseStorage fs = FirebaseStorage.instance;
  //   input.click();
  //   input.onChange.listen((event) {
  //     final file = input.files?.first;
  //     final reader = FileReader();
  //     reader.readAsDataUrl(file!);
  //     reader.onLoadEnd.listen((event) async {
  //       var snapshot = await fs.ref().child('newfile').putBlob(file);
  //       String downloadUrl = await snapshot.ref.getDownloadURL();
  //       setState(() {
  //         imgUrl = downloadUrl;
  //       });
  //     });
  //   });
  // }
  //
  //
  String SelectedValue = 'All Result';
  bool isScrollable = false;

  var items = [
    'All Result',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // const UserProfileWidget(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Center(
                        child: Text(
                          'Edit Profile',
                          style: screenTitleTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      AppTextFieldWidget(
                        hintText: ' Name',
                        controller: _NameETController,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AppTextFieldWidget(
                        hintText: 'Email',
                        controller: _class_NameETController,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AppTextFieldWidget(
                        hintText: 'Mobile',
                        controller: _mobileETController,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AppTextFieldWidget(
                        hintText: 'Date of Birth',

                        controller: _bloodETController,
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      AppTextFieldWidget(
                        hintText: 'Nationality',

                        controller: _bloodETController,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextFieldWidget(
                        hintText: 'State',

                        controller: _bloodETController,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextFieldWidget(
                        hintText: 'Post Code',

                        controller: _bloodETController,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppElevatedButton(
                        Color: Colors.white10,
                        child: const Text("Save"),
                        onTap: () {
                          // updateProfile();
                          // showSnackBarMessage(
                          //     context, 'updateProfile successful!');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _newPasswordETController =
  TextEditingController();
  final TextEditingController _confirmPasswordETController =
  TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:  Padding(
          padding: const EdgeInsets.all(24.0),
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Set Password',
                    style: screenTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                      'Minimum length of password must be 6 with letters and number combination',
                      style: screenSubTitleTextStyle),

                  const SizedBox(
                    height: 24,
                  ),

                  AppTextFieldWidget(
                      obscureText: true,
                      hintText: 'Current Password',
                      controller: _newPasswordETController),
                  const SizedBox(
                    height: 8,
                  ),

                  AppTextFieldWidget(
                      obscureText: true,
                      hintText: 'New Password',
                      controller: _newPasswordETController),
                  const SizedBox(
                    height: 8,
                  ),

                  AppTextFieldWidget(
                    obscureText: true,
                    hintText: 'Confirm Password',
                    controller: _confirmPasswordETController,
                    validator: (String? value) {
                      if ((value?.isEmpty ?? true) ||
                          ((value ?? '') != _newPasswordETController.text)) {
                        return 'Password mismatch';
                      }
                      return null;
                    },
                  ),


                  const SizedBox(
                    height:14,
                  ),
                  Center( child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()));
                    },
                    child:  Text('Forgot Password?',
                      style:GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFEF232F),
                          fontSize: 14,
                        ),
                      ),

                    ),
                  ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  AppElevatedButton(
                    child: const Text('Save'),
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        //     final response = await NetworkUtils().postMethod(
                        //       Urls.resetPasswordUrl,
                        //       body: {
                        //         "email": widget.email,
                        //         "OTP": widget.otp,
                        //         "password": _newPasswordETController.text
                        //       },
                        //     );
                        //     if (response != null &&
                        //         response['status'] == 'success') {
                        //       if (mounted) {
                        //         showSnackBarMessage(
                        //             context, 'Password reset success');
                        //         Navigator.pushAndRemoveUntil(
                        //             context,
                        //             MaterialPageRoute(
                        //                 builder: (context) => LoginScreen()),
                        //                 (route) => false);
                        //       }
                        //     } else {
                        //       if (mounted) {
                        //         showSnackBarMessage(
                        //             context, 'Password reset failed', true);
                        //       }
                        //     }
                      }
                    },
                  ),


                ],
              ),
            ),
          ),
        ),
    );
  }
}







class languageChangeScreen extends StatefulWidget {
  const languageChangeScreen({Key? key}) : super(key: key);

  @override
  State<languageChangeScreen> createState() => _languageChangeScreenState();
}

class _languageChangeScreenState extends State<languageChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppElevatedButton(
              child:  Text('English'), onTap: ()  { },
            ),

            AppElevatedButton(
              child:  Text('Bamgla'), onTap: ()  { },
            ),

           SizedBox(
             height: 130,
               ),







            AppElevatedButton(
              child:  Text('Confirm'), onTap: ()  { },
            ),


          ],
    ),
      )
    );
  }
}
