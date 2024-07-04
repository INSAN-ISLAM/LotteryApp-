import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/ElevatedButton.dart';
import 'Edit profile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text("Log Out"),
                content: Text("Are You sure you want to log out?"),
                actions: [
                  Center(
                    child: Column(
                      children: [
                        AppElevatedButton(
                          Color: Colors.yellow,
                          onTap: () {
                            Navigator.of(context).pop();
                            //Navigator.push(context, MaterialPageRoute(builder: (context) =>  LogInScreen()));
                          },
                          child: Center(
                            child: Text(
                              "Confirm",
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
                        // TextButton(
                        //     onPressed: () {
                        //       // MySnackBar("Thanks", context);
                        //       // Navigator.of(context).pop();
                        //     },
                        //     child: Text("No")),
                        SizedBox(height: 5),
                        AppElevatedButton(
                          onTap: () {
                            Navigator.of(context).pop();
                           // Navigator.push(context, MaterialPageRoute(builder: (context) => const MainBottomNavBar()));
                          },
                          child: Center(
                            child: Text(
                              "Cancel",
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
                ],
              ));
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Account"),
          ),
          ListTile(
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text("Edit Profile"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditScreen()),
                        (route) => true);
              }),
          ListTile(
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text("Notification Setting"),
              onTap: () {
                MySnackBar("I am phone", context);
              }),
          ListTile(
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text("Change Password"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePassword()),
                        (route) => true);
              }),
          ListTile(
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text("Change Lamguage"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const languageChangeScreen()),
                        (route) => true);
              }),
          ListTile(
            title: Text("Others"),
          ),
          ListTile(
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text("Privacy "
                  "policy"),
              onTap: () {
                MySnackBar("I am phone", context);
              }),
          ListTile(
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text("Delete Account"),
              onTap: () {
                MyAlertDialog(context);
              }),
          ListTile(
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text("Log Out"),
              onTap: () {
                MyAlertDialog(context);
              }),
        ],
      ),
    );
  }
}



