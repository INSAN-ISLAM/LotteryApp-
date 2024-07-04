import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AllResultPage.dart';
//import 'package:KingStarApp/app/Views/Screens/practice.dart';

class RESULTS extends StatefulWidget {
  const RESULTS({Key? key}) : super(key: key);

  @override
  State<RESULTS> createState() => _RESULTSState();
}

class _RESULTSState extends State<RESULTS> {
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
  String SelectedValue = 'All Result';
  bool isScrollable = false;

  var items = [
    'All Result',
    '4D classic',
    '4D jackpot',
    'Mgold',
    '4d jackpot Gold ',
    'Magnum Life ',
  ];
//  change(items){
//   if (All Result) {
//     AllResultScreen(),
//   } else if (4D classic) {
//   Icon(Icons.directions_transit, size: 350),
//   } else {
//   Icon(Icons.directions_transit, size: 350),
//   },
//
// }




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title:  Center(child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  // Initial Value
                  focusColor: Colors.white,
                  value: SelectedValue,

                  // Down Arrow Icon
                  // icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      SelectedValue = newValue!;
                    });
                  },
                ),
              ],
            ),
          ), ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.dehaze)),

          ],
          bottom:  const TabBar(
            labelColor:Colors.black,
            indicatorColor: Colors.amber,
            isScrollable:true,
            tabs: [
              Text('08/05/2024'),
              Text('08/05/2024'),
              Text('08/05/2024'),
              Text('08/05/2024'),
              Text('08/05/2024'),
              Text('08/05/2024'),
              Text('08/05/2024'),

            ],
          ),
        ),
        body: const TabBarView(
          children: [

            AllResultScreen(),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
