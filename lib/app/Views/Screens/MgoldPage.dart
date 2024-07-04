import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import '../Widgets/ElevatedButton.dart';
import 'BottomNavi_Bar.dart';

class MgoldScreen extends StatefulWidget {
  const MgoldScreen({Key? key}) : super(key: key);

  @override
  State<MgoldScreen> createState() => _MgoldScreenState();
}

class _MgoldScreenState extends State<MgoldScreen> {
  Random random = Random();
  List<int> randomNumbers = [0];

  void generateRandomNumbers(int count) {
    setState(() {
      randomNumbers = List<int>.generate(count, (index) => random.nextInt(100)); // generates 'count' random numbers between 0 and 99
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' Step 1',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
                flex: 20,
                child: Column(
                  children: [
                    Center(child: Text("Pick 6 numbers!")),
                    SizedBox(
                      height: 10,
                    ),

                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: randomNumbers.length,
                        itemBuilder: (context, index) {

                          return  Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                SizedBox(width: 20,),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.amberAccent,
                                  child: Text(" ${randomNumbers[index]}"),
                                ),
                                SizedBox(width: 2,)
                              ],
                            ),
                          );


                          return ListTile(
                            title: Text(' ${randomNumbers[index]}'),
                          );
                        },
                      ),
                    ),
                  ],
                )),
            Expanded(flex: 50, child: Text("")),
            Expanded(
                flex: 40,
                child: Column(
                  children: [
                    Text("or generete a random number with lucky pick!"),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      child: AppElevatedButton(
                        onTap: () async {
                          //  _login();
                          generateRandomNumbers(6);
                        },
                        child: Center(
                          child: Text(
                            "Lucky Pick",
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      child: AppElevatedButton(
                        Color: Colors.amber,
                        onTap: () async {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                        },
                        child: Center(
                          child: Text(
                            "Next",
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
                  ],
                ))
          ],
        ),
      ) ,

    );
  }
}
class mgoldNextScreen extends StatefulWidget {
  const mgoldNextScreen({Key? key}) : super(key: key);

  @override
  State<mgoldNextScreen> createState() => _mgoldNextScreenState();
}

class _mgoldNextScreenState extends State<mgoldNextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' Step 1',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
         body:SingleChildScrollView(
      child:Padding(
      padding: const EdgeInsets.all(12.0),
    child:Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Your potential winning"),
        Text("Your lucky number:653443"),
        Text("number matched(6 out of 6):794322"),



             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [

                 Container(

                   height: 30,
                   width: 40,
                   child: AppElevatedButton(
                     Color: Colors.white,
                     onTap: () async {
                       // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                     },
                     child: Center(
                       child: Text(
                         "4",
                         style:GoogleFonts.poppins(
                           textStyle: const TextStyle(
                             color: Colors.amber,
                             fontSize: 14,
                             //fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 5,
                 ),
                 Container(

                   height: 30,
                   width: 40,
                   child: AppElevatedButton(
                     Color: Colors.white,
                     onTap: () async {
                       // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                     },
                     child: Center(
                       child: Text(
                         "4",
                         style:GoogleFonts.poppins(
                           textStyle: const TextStyle(
                             color: Colors.amber,
                             fontSize: 14,
                             //fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 5,
                 ),
                 Container(

                   height: 30,
                   width: 40,
                   child: AppElevatedButton(
                     Color: Colors.white,
                     onTap: () async {
                       // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                     },
                     child: Center(
                       child: Text(
                         "4",
                         style:GoogleFonts.poppins(
                           textStyle: const TextStyle(
                             color: Colors.amber,
                             fontSize: 14,
                             //fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 5,
                 ),
                 Container(

                   height: 30,
                   width: 40,
                   child: AppElevatedButton(
                     Color: Colors.white,
                     onTap: () async {
                       // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                     },
                     child: Center(
                       child: Text(
                         "4",
                         style:GoogleFonts.poppins(
                           textStyle: const TextStyle(
                             color: Colors.amber,
                             fontSize: 14,
                             //fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 5,
                 ),
                 Container(

                   height: 30,
                   width: 40,
                   child: AppElevatedButton(
                     Color: Colors.white,
                     onTap: () async {
                       // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                     },
                     child: Center(
                       child: Text(
                         "4",
                         style:GoogleFonts.poppins(
                           textStyle: const TextStyle(
                             color: Colors.amber,
                             fontSize: 14,
                             //fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 5,
                 ),
                 Container(

                   height: 30,
                   width: 40,
                   child: AppElevatedButton(
                     Color: Colors.white,
                     onTap: () async {
                       // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                     },
                     child: Center(
                       child: Text(
                         "4",
                         style:GoogleFonts.poppins(
                           textStyle: const TextStyle(
                             color: Colors.amber,
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


          Text("Example"),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amberAccent,
                    child: Text("6"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("5"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("3"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("2"),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amberAccent,
                    child: Text("4"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5,),
          Text(" winning Prize*"),
          SizedBox(height: 5,),
          Text("RM13,138.00"),
          SizedBox(height: 5,),
          Text("(5% of Sample jackpot Gold 2 + RM3388)"),
          SizedBox(height: 5,),
          Text("Brimming with moments of recollection and reconnection,\n Come Shining: More Poems and Stories from \nFifty Years of Copper Canyon \nPress is a testament to a half century of publishing and\n poetic vitality. A companion to our fiftieth anniversary anthology,\n A House Called Tomorrow, this collection highlights nearly one\n hundred poems pulled from well-loved Copper Canyon books.\n Poems, introduced with stories from the readers . Come Shining flashes with intimate insights abou\nt poetry’s power—to awaken our lo"),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 48,
            width: double.infinity,
            child: AppElevatedButton(
              Color: Colors.amber,
              onTap: () async {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MgoldComplateScreen()), (route) => true);
              },
              child: Center(
                child: Text(
                  "Next",
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
      ],


      ) ,

         ),),
    );
  }
}

class MgoldComplateScreen extends StatefulWidget {
  const MgoldComplateScreen({Key? key}) : super(key: key);

  @override
  State<MgoldComplateScreen> createState() => _MgoldComplateScreenState();
}

class _MgoldComplateScreenState extends State<MgoldComplateScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 20,
            child:Container(
              color: Colors.amber,

            ),
          ),
          Expanded(
              flex: 20,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Best on your lucky number!'),
                  SizedBox(height: 10,),
                  Text('4306')


                ],
              )),
          Expanded(
            flex: 30,
            child: Text(''),),
          Expanded(
            flex:5,

            child: Container(
              height: 48,
              width: double.infinity,
              child: AppElevatedButton(
                Color: Colors.amber,
                onTap: () async {


                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainBottomNavBar()),
                          (route) => true);
                },
                child: Center(
                  child: Text(
                    "Complete Tutorial",
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
            ),),




        ],



      ),


    );
  }
}
