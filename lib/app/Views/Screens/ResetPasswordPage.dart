import 'package:flutter/material.dart';

import '../Widgets/App_TextField.dart';
import '../Widgets/ElevatedButton.dart';
import '../Widgets/TextStyle.dart';
import 'LogInPage.dart';

class ResetPasswordScreen extends StatefulWidget {
  //final String email, otp;

  const ResetPasswordScreen({Key? key,
   // required this.email,
    //required this.otp
  }
  )
      : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _newPasswordETController =
  TextEditingController();
  final TextEditingController _confirmPasswordETController =
  TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                    height: 16,
                  ),
                  AppElevatedButton(
                    child: const Text('Confirm'),
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
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogInScreen()),
                                  (route) => false);
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.green),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

    );
  }
}