
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LogInPage.dart';
import '../Widgets/ElevatedButton.dart';
import 'SettinPage.dart';

class ACCOUNT extends StatefulWidget {
  const ACCOUNT({Key? key}) : super(key: key);

  @override
  State<ACCOUNT> createState() => _ACCOUNTState();
}

class _ACCOUNTState extends State<ACCOUNT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                 child: Column(
                 crossAxisAlignment:  CrossAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){

                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) => SettingScreen()), (route) => true);},
                      icon: Icon(Icons.settings),
                  ),

                    const Center(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:AssetImage('assets/images/profile.png'),
                      ),
                    ),

                    SizedBox(
                      height: 4,
                    ),
                    Center(child: Text("Guest")),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        height: 30,
                        width: 150,
                        child: AppElevatedButton(
                          Color: Colors.white,
                          onTap: () async {

                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                builder: (context) => LogInScreen()), (route) => true);

                          },
                          child: Center(
                            child: Text(
                              "Login/SignUp >",
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
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                elevation: 6,
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ACCOUNT ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                        ListTile(
                          iconColor: Colors.black,
                          trailing: Icon(Icons.arrow_forward_ios),
                          leading: Text(
                            'Favourite number ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        ListTile(
                          iconColor: Colors.black,
                          trailing: Icon(Icons.arrow_forward_ios),
                          leading: Text(
                            'Find an Outlet ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        ListTile(
                          iconColor: Colors.black,
                          trailing:IconButton(onPressed:(){}, icon:  Text(
                            'Pending ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),),
                             // Icon(Icons.arrow_forward_ios),
                          leading: Text(
                            'Account verification ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                        ),






                        // ListTile(
                        //   iconColor: Colors.black,
                        // //  trailing: Icon(Icons.arrow_forward_ios),
                        //   title: Column(
                        //    // mainAxisAlignment: MainAxisAlignment.start,
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Text(
                        //         'ACCOUNT ',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontWeight: FontWeight.w600,
                        //           fontSize: 10,
                        //         ),
                        //       ),
                        //       Text(
                        //         'Favourite number',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontWeight: FontWeight.w600,
                        //           fontSize: 10,
                        //         ),
                        //       ),
                        //   ListTile(
                        //     iconColor: Colors.black,
                        //     trailing: Icon(Icons.arrow_forward_ios),
                        //     leading: Text(
                        //       'Find an Outlet ',
                        //       style: TextStyle(
                        //         color: Colors.black,
                        //         fontWeight: FontWeight.w600,
                        //         fontSize: 10,
                        //       ),
                        //     ),
                        //   ),
                        //       // Text(
                        //       //   'Find an Outlet',
                        //       //   style: TextStyle(
                        //       //     color: Colors.black,
                        //       //     fontWeight: FontWeight.w600,
                        //       //     fontSize: 10,
                        //       //   ),
                        //       // ),
                        //       Text(
                        //         'Account verification',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontWeight: FontWeight.w600,
                        //           fontSize: 10,
                        //         ),
                        //       ),
                        //
                        //
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                elevation: 6,
                child: Container(
                  height: 310,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ListTile(
                        iconColor: Colors.black,
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SUPPORT',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Magnum Cares',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),

                          ],
                        ),
                      ),
                      ListTile(
                        iconColor: Colors.black,
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text(
                          'Play Responsibly ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      ListTile(
                        iconColor: Colors.black,
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text(
                          'Need help ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      ListTile(
                        iconColor: Colors.black,
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text(
                          'Feedback ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      ListTile(
                        iconColor: Colors.black,
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text(
                          'Notification Setting ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      ListTile(
                        iconColor: Colors.black,
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text(
                          'Change Language',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
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
