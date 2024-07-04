import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import '../Widgets/App_TextField.dart';
import '../Widgets/ElevatedButton.dart';
import 'BottomNavi_Bar.dart';

class ClassicScreen extends StatefulWidget {
  const ClassicScreen({Key? key}) : super(key: key);

  @override
  State<ClassicScreen> createState() => _ClassicScreenState();
}

class _ClassicScreenState extends State<ClassicScreen> {
  Random random = Random();
  List<int> randomNumbers = [0];

  void generateRandomNumbers(int count) {
    setState(() {
      randomNumbers = List<int>.generate(count, (index) => random.nextInt(100)); // generates 'count' random numbers between 0 and 99
    });
  }
@override
  void initState() {
 // generateRandomNumbers(4);
    super.initState();
  }


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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
                flex: 20,
                child: Column(
                  children: [
                    Center(child: Text("Pick 4 numbers!")),
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
                                SizedBox(width: 30,),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.amberAccent,
                                  child: Text(" ${randomNumbers[index]}"),
                                ),
                                SizedBox(width: 5,)
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
                          generateRandomNumbers(4);
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
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClassicNextScreen()),
                              (route) => true);
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
      ),
    );
  }
}

class ClassicNextScreen extends StatefulWidget {
  const ClassicNextScreen({Key? key}) : super(key: key);

  @override
  State<ClassicNextScreen> createState() => _ClassicNextScreenState();
}

class _ClassicNextScreenState extends State<ClassicNextScreen> {
  final TextEditingController _confirmPasswordETController = TextEditingController();
  final TextEditingController _firmPasswordETController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
             Expanded(
                flex: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "How do You Want to Play?",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("The minimum play amount in Mr1 each"),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('Big ?',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            Text('Covers all 23 prizes'),
                            Card(
                              child: SizedBox(
                                  height: 60,
                                  width: 120,
                                  child: AppTextFieldWidget(
                                    //obscureText: true,
                                    hintText: '',
                                    controller: _firmPasswordETController,
                                    suffixIcon: Text("\$",
                                    style: TextStyle(
                                      fontSize: 20

                                    ),),
                                  ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text('Small ?',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),

                            ),
                            Text('Covers Top 3 prizes'),
                            Card(
                              child: SizedBox(
                                height: 60,
                                width: 120,
                                child:   AppTextFieldWidget(
                                 // obscureText: true,
                                  hintText: '',
                                  controller: _confirmPasswordETController,
                                  suffixIcon: Text("\$",
                                    style: TextStyle(
                                        fontSize: 20

                                    ),),

                                ),





                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )),
            Expanded(flex: 60, child: Text(" ")),
            Expanded(
              flex: 7,
              child: Container(
                height: 48,
                width: double.infinity,
                child: AppElevatedButton(
                  Color: Colors.amber,
                  onTap: () async {


                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Classic1NextScreen()),
                            (route) => true);
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
            ),
          ],
        ),
      ),
    );
  }
}
class Classic1NextScreen extends StatefulWidget {
  const Classic1NextScreen({Key? key}) : super(key: key);

  @override
  State<Classic1NextScreen> createState() => _Classic1NextScreenState();
}

class _Classic1NextScreenState extends State<Classic1NextScreen> {
  Random random = Random();
  int randomNumber = 0;

  void generateRandomNumber() {
    setState(() {
      randomNumber = random.nextInt(100); // generates a random number between 0 and 99
    });
  }
@override
  void initState() {
    generateRandomNumber();
    super.initState();
  }

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

      body:  Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
                flex: 60,
              child: Column(
                  children: [
                    Text('Yoy could win up to.....'),
                    Text('here are your potential wining ,base on your play amount and prize'),
                    SizedBox(height: 5,),
                    Card(
                      child: SizedBox(
                          height: 40,
                          width:double.infinity,
                          child: ListTile(
                            trailing: Text("\$ ${ 445*randomNumber}",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            title: Text(
                              '1st prize',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),

                          )
                      ),
                    ),
                    Card(
                      child: SizedBox(
                          height: 40,
                          width:double.infinity,
                          child: ListTile(
                            trailing: Text("\$${ 323*randomNumber}",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            title: Text(
                              '2nd prize',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),

                          )
                      ),
                    ),
                    Card(
                      child: SizedBox(
                          height: 40,
                          width:double.infinity,
                          child: ListTile(
                            trailing: Text("\$${ 324*randomNumber}",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            title: Text(
                              '3rd prize',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),

                          )
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                              child: SizedBox(
                                  height: 60,
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Text("Special",
                                          style: TextStyle(


                                            fontSize: 12,
                                          ),
                                        ),
                                       Text(
                                          '\$${randomNumber*2}',
                                         style: TextStyle(
                                           color: Colors.green,
                                           fontWeight: FontWeight.w600,
                                           fontSize: 15,
                                         ),
                                        ),


                                    ],
                                  )
                              ),
                            ),


                        SizedBox(
                          width:5,
                        ),
                        Card(
                          child: SizedBox(
                              height: 60,
                              width: 200,
                              child: Column(
                                children: [
                                  Text("Special",
                                    style: TextStyle(


                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '\&${randomNumber*3}',
                                    style: const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),


                                ],
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),),
         SizedBox(height: 5,),
            Expanded(flex: 30, child: Text(''),),


            Expanded(
              flex: 8,

              child: Container(
                height: 48,
                width: double.infinity,
                child: AppElevatedButton(
                  Color: Colors.amber,
                  onTap: () async {


                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ClssicComplateScreen()),
                            (route) => true);
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
              ),),
          ],
        ),
      ),
    );
  }
}




class ClssicComplateScreen extends StatefulWidget {
  const ClssicComplateScreen({Key? key}) : super(key: key);

  @override
  State<ClssicComplateScreen> createState() => _ClssicComplateScreenState();
}

class _ClssicComplateScreenState extends State<ClssicComplateScreen> {
  Random random = Random();
  List<int> randomNumbers = [];

  void generateRandomNumbers(int count) {
    setState(() {
      randomNumbers = List<int>.generate(count, (index) => random.nextInt(100)); // generates 'count' random numbers between 0 and 99
    });
  }
  @override
  void initState() {
    generateRandomNumbers(1);
    super.initState();
  }

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
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: randomNumbers.length,
                      itemBuilder: (context, index) {

                        return  Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            
                            Center(
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.amberAccent,
                                child: Text(" ${342*randomNumbers[index]}"),
                              ),
                            ),
                            SizedBox(width: 5,)
                          ],
                        );


                        return ListTile(
                          title: Text(' ${randomNumbers[index]}'),
                        );
                      },
                    ),
                  ),

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

