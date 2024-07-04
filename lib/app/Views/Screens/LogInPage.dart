import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:KingStarApp/app/Views/Screens/verifyEmailPage.dart';

import '../../Constant/Colors.dart';
import '../Widgets/App_TextField.dart';
import '../Widgets/CardWidget.dart';
import '../Widgets/ElevatedButton.dart';
import '../Widgets/TextStyle.dart';
import 'AccountPage.dart';
import 'BottomNavi_Bar.dart';
import 'HomePage.dart';
import 'RegisterPage.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';





class PhoneLogIn extends StatelessWidget {
  PhoneLogIn({Key? key}) : super(key: key);
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
  PhoneNumber number = PhoneNumber(isoCode: 'BD'); // Init
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
                      'Welcome Back To Page ',
                      style: screenTitleTextStyle,
                    ),
                  ),
                  SizedBox(height:5,),

                  Expanded(
                    flex: 20,
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

                        Expanded(
                          flex: 80,
                          child:  Padding(
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
                    flex: 15,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  LogInSreen1()));

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




class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _HomeState();
}

class _HomeState extends State<LogInScreen> {
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

  // MySnackBar(message, context) {
  //   return ScaffoldMessenger.of(context)
  //       .showSnackBar(SnackBar(content: Text(message)));
  // }
  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool m = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      //height: 300.0,
                      viewportFraction: 1,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlay: true,
                      onPageChanged: (index, _) {
                        _currentCarouselIndex.value = index;
                      }),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.amber),
                            alignment: Alignment.center,
                            child: Text(
                              'text $i',
                              style: TextStyle(fontSize: 16.0),
                            ));
                      },
                    );
                  }).toList(),
                ),
                ValueListenableBuilder(
                    valueListenable: _currentCarouselIndex,
                    builder: (context, currentValue, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 5; i++)
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: currentValue == i
                                        ? blackColor
                                        : softGreyColor,
                                    border: Border.all(
                                        color: greyColor.withOpacity(0.5)),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )
                        ],
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppElevatedButton(
                          Color: Colors.yellow,
                          onTap: () {

                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                builder: (context) => Register_Page1()), (route) => true);


                           // Navigator.push(context, MaterialPageRoute(builder: (context) =>  Register_Page1()));
                          },
                          child: Center(
                            child: Text(
                              "sign up as new member",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  //fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        AppElevatedButton(
                          onTap: () {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
    builder: (context) => PhoneLogIn()), (route) => true);


    },


                          child: Center(
                            child: Text(
                              "LogIn",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  //fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}








class LogInSreen1 extends StatefulWidget {
  const LogInSreen1({Key? key}) : super(key: key);

  @override
  State<LogInSreen1> createState() => _LogInSreen1State();
}

class _LogInSreen1State extends State<LogInSreen1> {

  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool m=true;
  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future<void> _login() async {
    try {
      final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailETController.text,
        password: _passwordETController.text,
      );
      // User logged in successfully
     Navigator.push(context, MaterialPageRoute(builder: (context) => const MainBottomNavBar()));
      print('User logged in: ${result.user!.uid}');
    } catch (e) {

      print('Error logging in: $e');
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

                const SizedBox(
                  height: 5,
                ),
                AppTextFieldWidget(
                  controller: _emailETController,
                  prefixIcon: Icon(Icons.mail_lock_outlined),
                  hintText: 'Enter Your Email',
                  validator: (value) {
                    if (value?.isEmpty ?? true)  {
                      return 'Enter your valid email';
                    }
                    return null;
                  },

                ),
                const SizedBox(
                  height: 12,
                ),
                AppTextFieldWidget(
                  obscureText: m,
                  prefixIcon: Icon(Icons.key),
                  hintText: 'Enter Your Password',
                  controller: _passwordETController,
                  suffixIcon: IconButton(icon:const Icon(Icons.remove_red_eye_outlined),
                    onPressed: (){
                      setState(() {
                        m=!m;
                      });
                    },

                  ),
                  validator: (value) {
                    if ((value?.isEmpty ?? true) &&
                        ((value?.length ?? 0) < 6))  {
                      return 'Enter password more than 6';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),

                const SizedBox(
                  height:14,
                ),
                Center( child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) => ResetPassword()), (route) => true);

                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()));
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



                Container(
                  height: 48,
                  width:  double.infinity,
                  child: AppElevatedButton(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        _login();


                      }
                    },




                    child:  Center(
                      child: Text("Login",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color:Colors.black,
                            fontSize: 14,
                            //fontWeight: FontWeight.w700,

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
    );




  }
}

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.cyan,
          ),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Email Id", Icons.person_outline, false,
                        _emailTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    firebaseUIButton(context, "Continue", () {


                      Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpVerificationScreen()),
                                  (route) => false);
                      // FirebaseAuth.instance
                      //     .sendPasswordResetEmail(email: _emailTextController.text)
                      //     .then((value) => Navigator.of(context).pop());
                    })
                  ],
                ),
              ))),
    );
  }
}
TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}
