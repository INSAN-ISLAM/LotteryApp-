

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllResultScreen extends StatefulWidget {
  const AllResultScreen({Key? key}) : super(key: key);

  @override
  State<AllResultScreen> createState() => _AllResultScreenState();
}

class _AllResultScreenState extends State<AllResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SingleChildScrollView(
        child: Column(
          children: [
            Card(
                elevation: 20,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                        children: [
                          Expanded(
                                  flex:10,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,

                                      color: Colors.amber,
                                      child:const ListTile(
                                        title: Text(
                                          '4D classic ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                          Expanded(
                            flex:10,
                            child: Container(
                              color: Colors.white,
                              child: Row(

                                children: [
                                  //SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    //crossAxisAlignment:CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text(
                                      '1st prize ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),
                                      Text(
                                      '8791',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  child: Column(
                                    //crossAxisAlignment:CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text(
                                      '2nd prize',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),
                                      Text(
                                      '1543 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  child: Column(
                                    //crossAxisAlignment:CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text(
                                      '3rd prize',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),
                                      Text(
                                      '3534 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),
                                    ],
                                  ),
                                ),


                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            flex:50,
                            child:  Container(
                              color: Colors.white,
                              child: Row(

                                children: [
                                  Expanded(
                                    child: Column(
                                      //crossAxisAlignment:CrossAxisAlignment.center,
                                     // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text(
                                          'Special ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                          ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                          ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                          ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                          ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                          ),),
                                        ),

                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Consolation ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),


                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),


                              ],
                            ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
                elevation: 20,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                        children: [
                          Expanded(
                                  flex:10,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,

                                    color: Colors.blue[600],
                                    child:ListTile(
                                      trailing: IconButton(onPressed: (){
                                        print('IconButton pressed');

                                      }, icon: Icon(Icons.arrow_forward_ios)),
                                      title: Text(
                                        '4D jackpot ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          Expanded(
                            flex:15,
                            child: Container(
                              color: Colors.white,
                              child:  Row(

                                children: [
                                  //SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    //crossAxisAlignment:CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                      'Jackpot 1 Prize  RM56,57,75698 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),
                                   TextButton(onPressed: (){}, child: Text("partially won"))  ,

                                      Text(
                                      '4D Jackpot 1 Winning Numbers',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),
                                    ],
                                  ),
                                ),




                                ],
                              ),
                            ),
                          ),

                          Expanded(
                            flex:50,
                            child:  Container(
                              color: Colors.white,
                              child: Row(

                                children: [
                                  Expanded(
                                    child: Column(
                                      //crossAxisAlignment:CrossAxisAlignment.center,
                                     // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [


                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      children: [

                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),
                                        ListTile(
                                          title: Text('53534',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          trailing: Text('4545',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),),
                                        ),

                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),


                              ],
                            ),
              ),
            ),
            SizedBox(height: 10,),


            Card(
                elevation: 20,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                        children: [
                          Expanded(
                                  flex:10,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,

                                    color: Colors.amber,
                                    child:const ListTile(
                                      title: Text(
                                        'Mgold ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          Expanded(
                            flex:10,
                            child: Container(
                              color: Colors.white,
                              child: Row(

                                children: [
                                  //SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    //crossAxisAlignment:CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text(
                                      '797689 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),

                                    ],
                                  ),
                                ),




                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            flex:10,
                            child:  Container(
                              color: Colors.white,
                              child: Row(

                                children: [
                                  Expanded(
                                    child: Column(
                                      //crossAxisAlignment:CrossAxisAlignment.center,
                                     // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text(
                                          '1st prize ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'RM34,53,545 ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),


                              ],
                            ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
                elevation: 20,
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                        children: [
                          Expanded(
                                  flex:10,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,

                                    color: Colors.amber,
                                    child:const ListTile(
                                      title: Text(
                                        '4d jackpot Gold  ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          Expanded(
                            flex:10,
                            child: Container(
                              color: Colors.white,
                              child: Row(

                                children: [
                                  //SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    //crossAxisAlignment:CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text(
                                      '767898 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                              ),

                                    ],
                                  ),
                                ),




                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            flex:10,
                            child:  Container(
                              color: Colors.white,
                              child: Row(

                                children: [
                                  Expanded(
                                    child: Column(
                                      //crossAxisAlignment:CrossAxisAlignment.center,
                                     // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text(
                                          'jackpot 1 Prize ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'RM7,768,988,989.8 ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:15,
                            child:  Container(
                              color: Colors.white,
                              child: Row(

                                children: [
                                  Expanded(
                                    child: Column(
                                      //crossAxisAlignment:CrossAxisAlignment.center,
                                     // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text(
                                          'jackpot 2 Prize ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'RM7,768,988,989.8 ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),

                                    IconButton(
                                      color: Colors.amber,
                                      icon: Text("partilly won",

                                      style: TextStyle(
                                        fontSize: 10,
                                      ),) , // The icon to display
                                      onPressed: () {
                                        // The action to perform when the button is pressed
                                        print('IconButton pressed');
                                      },
                                    ),

                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),


                              ],
                            ),
              ),
            ),

            
            
            
            
            
            
          ],
        ),
      ),






    );
  }
}
