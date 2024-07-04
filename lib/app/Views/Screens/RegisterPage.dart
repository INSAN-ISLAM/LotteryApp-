//import 'dart:js';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:demo_project/Screen/profile_Page.dart';
// import 'package:demo_project/Screen/updateProfilePage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

//import '../Style/TextFieldStyle.dart';

import '../Widgets/App_TextField.dart';
import '../Widgets/ElevatedButton.dart';
import '../Widgets/TextStyle.dart';
import 'LogInPage.dart';
//import 'bottom_nav_bar.dart';



 class Register_Page extends StatelessWidget {
  Register_Page({Key? key}) : super(key: key);

  final TextEditingController nameETController = TextEditingController();
  final TextEditingController emailETController = TextEditingController();
 // final TextEditingController bloodNameETController = TextEditingController();
  final TextEditingController referETController = TextEditingController();
  final TextEditingController passwordETController = TextEditingController();
  //final TextEditingController repasswordETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool m=true;

  Future<void> _signUp() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailETController.text,
        password: passwordETController.text,
      ).then((value) async {
        FirebaseFirestore.instance.collection('Check').doc().set({
          'Name': nameETController.text,
          'Email': emailETController.text,
          'Refer Code': referETController.text,
          //'Re password': repasswordETController.text,
          'password': int.tryParse(passwordETController.text) ?? 0,
        });
        return value;

     }
      );


     print('User signed up: ${userCredential.user!.uid}');

    } catch (e) {
      // Error occurred during signup
      print('Error signing up: $e');
      //showSnackBarMessage(context as BuildContext, 'Registration Failed! Try again', true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  'Get Registation ',
                  style: screenTitleTextStyle,
                ),

                SizedBox(height: 20),
                AppTextFieldWidget(
                  controller: nameETController,
                  hintText: 'Name',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your first name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                AppTextFieldWidget(
                  controller: emailETController,
                  hintText: 'Email',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your valid email';
                    }
                    return null;
                  },
                  onChanged: (value){
                    // email=value!;

                  },

                ),
                SizedBox(height: 20),

                AppTextFieldWidget(
                  controller: referETController,
                  hintText: 'Refer Code',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your valid Refer Code';
                    }
                    return null;
                  },

                ),
                SizedBox(height: 20),
                AppTextFieldWidget(
                  controller: passwordETController,
                  hintText: 'Password',
                  obscureText: true,
                  validator: (value) {
                    if ((value?.isEmpty ?? true) &&
                        ((value?.length ?? 0) < 6)) {
                      return 'Enter password more than 6';
                    }
                    return null;
                  },
                  onChanged: (value){
                    //email=value!;

                  },
                ),
                // SizedBox(height: 20),
                // AppTextFieldWidget(
                //   controller:repasswordETController,
                //   hintText: 'Re-enter password',
                //   validator: (value) {
                //     if (value?.isEmpty ?? true) {
                //       return 'Enter your valid mobile';
                //     }
                //     return null;
                //   },
                //
                // ),


                const SizedBox(height: 16),
                AppElevatedButton(
                  child: const Text('Registation'),
                  onTap:  ()  async {
                    if (_formKey.currentState!.validate()) {
                      try {
                       _signUp();
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInSreen()));

                      } catch (e) {

                      }

                      //  Navigator.pop(context);
                    }
                    //

                  },

                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) => LogInSreen1()), (route) => true);

                       // Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInSreen1()));
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.green),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}



 class Register_Page1 extends StatelessWidget {
  Register_Page1({Key? key}) : super(key: key);
  final TextEditingController emailETController = TextEditingController();
  final TextEditingController NameETController = TextEditingController();
  final TextEditingController bloodNameETController = TextEditingController();
  final TextEditingController ReferETController = TextEditingController();
  final TextEditingController passwordETController = TextEditingController();
  final TextEditingController RepasswordETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool m=true;

  // Future<void> _signUp() async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: emailETController.text,
  //       password: passwordETController.text,
  //     ).then((value) async {
  //
  //       FirebaseFirestore.instance.collection('Check').doc(value.user!.uid).set({
  //         'name': NameETController.text,
  //         'mobile': mobileETController.text,
  //         'email': emailETController.text,
  //         'Blood': bloodNameETController.text,
  //         'Class Name': ClassNameETController.text,
  //         'password': int.tryParse(passwordETController.text) ?? 0,
  //       });
  //       return value;
  //
  //     } );
  //
  //
  //     //print('User signed up: ${userCredential.user!.uid}');
  //
  //   } catch (e) {
  //     // Error occurred during signup
  //     print('Error signing up: $e');
  //     // showSnackBarMessage(context as BuildContext, 'Registration Failed! Try again', true);
  //   }
  // }
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'BD'; // Set Bangladesh as the initial country
  PhoneNumber number = PhoneNumber(isoCode: 'BD'); // Initialize with Banglades
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Container(
              height: 300,
              width:MediaQuery.of(context).size.width,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 10,
                    child: Text(
                      'Get Registation ',
                      style: screenTitleTextStyle,
                    ),
                  ),
            SizedBox(height:5,),

                  Expanded(
                    flex: 30,
                    child: AppTextFieldWidget(
                      controller: NameETController,
                      hintText: 'Name',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Enter your first name';
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height:5,),
                Expanded(
                  flex: 40,
                  child: Row(
                    children: [
                      // Expanded(
                      //   flex: 20,
                      //   child: TextFormField(
                      //     //onChanged: onChanged,
                      //     //controller: controller,
                      //     obscureText: true ?? false,
                      //     decoration: InputDecoration(
                      //       fillColor: Colors.white,
                      //       hintText: "+880",
                      //       hintStyle:TextStyle(
                      //         color: Color(0xFF6A7189),
                      //         fontSize: 16,
                      //       ),
                      //       filled: true,
                      //       border: const OutlineInputBorder(
                      //         borderRadius: BorderRadius.all(Radius.circular(10)),
                      //         borderSide: BorderSide(color: Colors.transparent),
                      //       ),
                      //       // enabledBorder: const OutlineInputBorder(
                      //       //   borderRadius: BorderRadius.all(Radius.circular(10)),
                      //       //   borderSide: BorderSide(color: Colors.transparent),
                      //       // ),
                      //       focusedBorder: const OutlineInputBorder(
                      //         borderRadius: BorderRadius.all(Radius.circular(10)),
                      //         // borderSide: BorderSide(color: Colors.transparent),
                      //
                      //       ),
                      //
                      //     ),
                      //   ),
                      // ),
                      SizedBox(width: 5,),
                      Expanded(
                        flex: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InternationalPhoneNumberInput(
                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                            },
                            onInputValidated: (bool value) {
                              print(value);
                            },
                            selectorConfig: SelectorConfig(
                              selectorType: PhoneInputSelectorType.DROPDOWN, // Dropdown with country flags
                              showFlags: true, // Show flags in the dropdown
                            ),
                            ignoreBlank: false,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: TextStyle(color: Colors.black),
                            initialValue: number,
                            textFieldController: controller,
                            formatInput: false,
                            keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                            inputBorder: OutlineInputBorder(),
                            onSaved: (PhoneNumber number) {
                              print('On Saved: $number');
                            },
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
                 // SizedBox(height: 20),
                  // AppTextFieldWidget(
                  //   controller: ReferETController,
                  //   hintText: 'Refer Code(Optional)',
                  //   validator: (value) {
                  //     if (value?.isEmpty ?? true) {
                  //       return 'Enter your valid Refer Code';
                  //     }
                  //     return null;
                  //   },
                  //
                  // ),




                  SizedBox(height:5,),
                  Expanded(
                    flex: 10,
                    child: AppElevatedButton(
                      Color: Colors.white10,
                      child: const Text('Send Otp'),
                      onTap:  ()  async {
                        if (_formKey.currentState!.validate()) {
                          try {
                         //   _signUp();
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInSreen()));

                          } catch (e) {

                          }

                          //  Navigator.pop(context);
                        }
                        //

                      },

                    ),
                  ),

                  SizedBox(height: 20),
                  Expanded(
                    flex: 10,
                    child:Text("----------------OR-------------------"),



                  ),
                  SizedBox(height: 20),
                  Expanded(
                    flex: 10,
                    child: AppElevatedButton(
                      Color: Colors.white,
                      child: const Text('Continue With Email'),
                      onTap:  ()  async {

                            //   _signUp();

                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) => Register_Page()), (route) => true);
                             //Navigator.push(context, MaterialPageRoute(builder: (context) =>  Register_Page()));

                      },

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
