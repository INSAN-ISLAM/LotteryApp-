import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/ElevatedButton.dart';
import 'BottomNavi_Bar.dart';
import 'LogInPage.dart';

class TICKETS extends StatefulWidget {
  const TICKETS({Key? key}) : super(key: key);

  @override
  State<TICKETS> createState() => _TICKETSState();
}

class _TICKETSState extends State<TICKETS> {
  String SelectedValue = 'All Result';
  //bool isScrollable = false;
bool stong =false;
  var items = [
    'All Result',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];





  MyAlertDialog(context) {
    return showDialog(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(


                title: Text("Member Account Required!"),
                content: Text("please  login or sign up to access Members only page"),
                actions: [
                 Center(
                   child: Column(
                     children: [
                       AppElevatedButton(
                         Color: Colors.yellow,
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>  LogInScreen()));
                         },
                         child: Center(
                           child: Text(
                             "ok",
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
                          // Navigator.of(context).pop();
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const MainBottomNavBar()));
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
  void initState() {

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      MyAlertDialog(context);
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Tickets",
         style: TextStyle(
           fontSize: 15.0,

         ),
          )),
          leading: Center(child: Text("Selects")),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.dehaze_rounded)),
            SizedBox(width: 10,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.dehaze_rounded)),

          ],
          bottom:  const TabBar(
            labelColor:Colors.black,
            indicatorColor: Colors.amber,
            //isScrollable:true,
            tabs: [
              Text('OpenDraws'),
              Text('PastDraws'),
              Text('Saved'),

            ],
          ),
        ),
        body:  const TabBarView(
          children: [
            Center(child: Text('No open Draw Tickets')),
            Center(child: Text('No Past Draw Tickets')),
            Center(child: Text('No Saved Draw Tickets')),

          ],
        ),
      ),
    );
  }
}
