import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constant/Colors.dart';
import '../Widgets/CardWidget.dart';
import 'ClassicPage.dart';
import 'JackpotGolgPage.dart';
import 'JackpotPage.dart';
import 'MgoldPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

  // String SelectedValue = 'Item 1';
  //
  // // List of items in our dropdown menu
  // var items = [
  //   'Item 1',
  //   'Item 2',
  //   'Item 3',
  //   'Item 4',
  //   'Item 5',
  // ];

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            "welcome to Magnum ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
        //iconTheme: IconThemeData(color: Colors.green),
        actionsIconTheme: IconThemeData(color: Colors.yellow),

        actions: [
          Container(
              height: 40,
              width: 40,
              //color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color:Colors.white ),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: IconButton(
                      onPressed: () {
                        MySnackBar("I am Notification", context);
                      },
                      icon: const Icon(Icons.mail)))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                  Card(
                    child: CarouselSlider(
                      options: CarouselOptions(
                          height: 300.0,
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
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) {},
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      fillColor: primaryColor,
                      filled: true,
                      hintText: 'This text is lucky Number  ',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CategoryCardWidget(
                        name: 'Games',
                      ),
                      CategoryCardWidget(
                        name: 'My Reward',
                      ),
                      CategoryCardWidget(
                        name: 'Draw dates',
                      ),
                      CategoryCardWidget(
                        name: ' inspiration',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CategoryCardWidget(
                        name: 'Games',
                      ),
                      CategoryCardWidget(
                        name: 'My Reward',
                      ),
                      CategoryCardWidget(
                        name: 'Draw dates',
                      ),
                      CategoryCardWidget(
                        name: ' inspiration',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CarouselSlider(
                          options: CarouselOptions(
                              height: 60.0,
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
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'text $i',
                                      style: TextStyle(fontSize: 16.0),
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Learn How to play  ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10)),
                          child:  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) => ClassicScreen()), (route) => true);

                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.ac_unit),
                                  Text(
                                    'How to play  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                  Text(
                                    '4d Classic  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10)),
                          child:  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) => MgoldScreen()), (route) => true);

                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.ac_unit),
                                  Text(
                                    'How to play  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                  Text(
                                    'mgold  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10)),
                          child:  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) => MgoldScreen()), (route) => true);

                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.ac_unit),
                                  Text(
                                    'How to play  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                  Text(
                                    'jackpot Gold',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10)),
                          child:  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) => JackpotScreen()), (route) => true);

                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.ac_unit),
                                  Text(
                                    'How to play  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                  Text(
                                    '4d jackpot',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10)),
                          child:  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) => MgoldScreen()), (route) => true);

                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.ac_unit),
                                  Text(
                                    'How to play  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                  ),
                                  Text(
                                    'Magnum Life',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
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
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Lucky Number of the day   ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Get your Lucky ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Number of today  ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          //TextButton(onPressed: (){}, child: Text("Play Now"))
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Play and Win! ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Next Draw:22-05-2024(wed) ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                         Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child:  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                     //conColor: Colors.white,
                      leading: CircleAvatar(
                        radius:50,
                        backgroundColor: Colors.amberAccent,
                        child: Text("4D Jackpot"),
                      ),
                      title: InkWell(
                        onTap: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) => JackpotScreen()), (route) => true);
                        },
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Estimated Jackpot 1 ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'RM 16,531,000.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Estimated Jackpot 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'RM 209,531,000.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            //TextButton(onPressed: (){}, child: Text("Play Now"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                  Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  child:  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      iconColor: Colors.white,
                      leading:  CircleAvatar(
                        radius:50,
                        backgroundColor: Colors.deepOrangeAccent,
                        child: Text(" jackpotGold"),
                      ),
                      title: InkWell(
                        onTap: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) => jackpotGoldScreen()), (route) => true);

                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Estimated Jackpot 1 ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'RM 16,531,000.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Estimated Jackpot 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'RM 209,531,000.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            //TextButton(onPressed: (){}, child: Text("Play Now"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child:  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      iconColor: Colors.white,
                      leading: CircleAvatar(
                        radius:50,
                        backgroundColor: Colors.deepOrangeAccent,
                        child: Text(" Mgold"),
                      ),
                      title: InkWell(
                        onTap: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) => MgoldScreen()), (route) => true);

                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Estimated First Prize ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'RM 16,531,000.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      iconColor: Colors.white,
                      leading: CircleAvatar(
                        radius:50,
                        backgroundColor: Colors.deepOrangeAccent,
                        child: Text("  4D Classic"),
                      ),
                      title: InkWell(
                        onTap: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) => ClassicScreen()), (route) => true);

                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'win up to',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'RM 16,531.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'with only RM1',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),

                            //TextButton(onPressed: (){}, child: Text("Play Now"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      iconColor: Colors.white,
                      leading: CircleAvatar(
                        radius:50,
                        backgroundColor: Colors.deepOrangeAccent,
                        child: Text("Mymagnum"),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Estimated Jackpot 1 ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            '\$16,531,000.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Estimated Jackpot 2',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'RM 209,531,000.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          //TextButton(onPressed: (){}, child: Text("Play Now"))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      iconColor: Colors.white,
                      trailing: Icon(Icons.mail, size: 50),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Got a feedback ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'let us know how to',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),

                          Text(
                            'improve your app',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                          // Text(
                          //   'experience!',
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.w600,
                          //     fontSize: 10,
                          //   ),
                          // ),

                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
