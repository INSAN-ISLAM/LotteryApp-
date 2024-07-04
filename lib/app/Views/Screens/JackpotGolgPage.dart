import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/ElevatedButton.dart';
import 'BottomNavi_Bar.dart';

class jackpotGoldScreen extends StatefulWidget {
  const jackpotGoldScreen({Key? key}) : super(key: key);

  @override
  State<jackpotGoldScreen> createState() => _jackpotGoldScreenState();
}

class _jackpotGoldScreenState extends State<jackpotGoldScreen> {
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
                      ],
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
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => jackpotGoldNextScreen()), (route) => true);
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
class jackpotGoldNextScreen extends StatefulWidget {
  const jackpotGoldNextScreen({Key? key}) : super(key: key);

  @override
  State<jackpotGoldNextScreen> createState() => _jackpotGoldNextScreenState();
}

class _jackpotGoldNextScreenState extends State<jackpotGoldNextScreen> {
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

      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            children: [
              Text("Pick for your golden number!"),
              SizedBox(height: 15,),
              Text("Your golden number"),
              SizedBox(height: 15,),
              Center(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amberAccent,
                  child: Text("?"),
                ),
              ),

              SizedBox(height: 15,),
              Container(
                height: 48,
                width: double.infinity,
                child: AppElevatedButton(
                  onTap: () async {
                    //  _login();
                  },
                  child: Center(
                    child: Text(
                      "Roll now",
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
              SizedBox(height: 15,),
              Container(
                height: 48,
                width: double.infinity,
                child: AppElevatedButton(
                  Color: Colors.amber,
                  onTap: () async {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => jackpotGolNextScreen1()), (route) => true);
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


          ),
      ),




    );
  }
}
class jackpotGolNextScreen1 extends StatefulWidget {
  const jackpotGolNextScreen1({Key? key}) : super(key: key);

  @override
  State<jackpotGolNextScreen1> createState() => _jackpotGolNextScreen1State();
}

class _jackpotGolNextScreen1State extends State<jackpotGolNextScreen1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: Padding(
      padding: const EdgeInsets.all(12.0),
    child:Column(
        children: [
          Text('Your Potential winnings'),
          Text('your lucky number:7889+07'),
          Text('Prize categories'),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Container(

                  height: 30,
                  width: 110,
                  child: AppElevatedButton(
                    Color: Colors.grey,
                    onTap: () async {
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                    },
                    child: Center(
                      child: Text(
                        "jackpotGold 1",
                        style:GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black26,
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
                  width: 110,
                  child: AppElevatedButton(
                    Color: Colors.grey,
                    onTap: () async {
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                    },
                    child: Center(
                      child: Text(
                        "jackpotGold",
                        style:GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black26,
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
                  width: 110,
                  child: AppElevatedButton(
                    Color: Colors.grey,
                    onTap: () async {
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                    },
                    child: Center(
                      child: Text(
                        "jackpotGold",
                        style:GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black26,
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
                  width: 100,
                  child: AppElevatedButton(
                    Color: Colors.grey,
                    onTap: () async {
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                    },
                    child: Center(
                      child: Text(
                        "Group 1",
                        style:GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black26,
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
                  width: 100,
                  child: AppElevatedButton(
                    Color: Colors.grey,
                    onTap: () async {
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                    },
                    child: Center(
                      child: Text(
                        "Group 2",
                        style:GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black26,
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
                  width: 100,
                  child: AppElevatedButton(
                    Color: Colors.grey,
                    onTap: () async {
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                    },
                    child: Center(
                      child: Text(
                        "Group 3",
                        style:GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black26,
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
                  width: 100,
                  child: AppElevatedButton(
                    Color: Colors.grey,
                    onTap: () async {
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                    },
                    child: Center(
                      child: Text(
                        "Group 4",
                        style:GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black26,
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
                  width: 100,
                  child: AppElevatedButton(
                    Color: Colors.grey,
                    onTap: () async {
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mgoldNextScreen()), (route) => true);
                    },
                    child: Center(
                      child: Text(
                        "Group 5",
                        style:GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.black26,
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
          SizedBox(height: 15,),
          Text('My interest in translating Persian poems began more than a decade ago, while spending six months in Tehran researching contemporary Iranian poetry. I met many poets and returned with hundreds of poetry books. '),
          SizedBox(height: 15,),
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
              Text("+"),
              SizedBox(
                width: 5,
              ),
              Center(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amberAccent,
                  child: Text("07"),
                ),
              ),

            ],
          ),
          SizedBox(
            width: 5,
          ),
          Text("data"),


          SizedBox(
            width: 50,
          ),
          Container(

            height: 40,
            width: double.infinity,
            child: AppElevatedButton(
              Color: Colors.amber,
              onTap: () async {
                 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => jackpotGoldComplateScreen()), (route) => true);
              },
              child: Center(
                child: Text(
                  "next",
                  style:GoogleFonts.poppins(
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
      ),

    );
  }
}
class jackpotGoldComplateScreen extends StatefulWidget {
  const jackpotGoldComplateScreen({Key? key}) : super(key: key);

  @override
  State<jackpotGoldComplateScreen> createState() => _jackpotGoldComplateScreenState();
}

class _jackpotGoldComplateScreenState extends State<jackpotGoldComplateScreen> {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('4306'),
                      SizedBox(height: 5,),
                      Text('+'),
                      SizedBox(height: 5,),
                      Text('06'),
                    ],
                  )


                ],
              )),
          Expanded(
            flex: 20,
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
