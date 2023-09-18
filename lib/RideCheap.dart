import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:uber_app/ecar.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

var destination = '';

class _nameState extends State<name> {
  String dropdownvalue = 'Central Park';

  // List of items in our dropdown menu
  var items = [
    'Central Park',
    'Times Square',
    'Madison Square Garden',
    'Empire State Building',
    'Museum of Modern Art',
  ];
  String transits = 'Nearby public transits';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Ride Cheap',
            style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        iconTheme: IconThemeData(
          color:
              const Color.fromARGB(255, 255, 255, 255), //change your color here
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                color: Color.fromARGB(255, 100, 253, 75),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(' Affordable\n Costs',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none)),
                      Text(
                          ' Ride cheaper by using\n electric vehicles and\n public transit.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none))
                    ])),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width *
                  MediaQuery.of(context).devicePixelRatio /
                  2.5,
              height: 35,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Text('Pickup: 308 settlers Avenue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 126, 126, 126),
                      fontSize: 20,
                      decoration: TextDecoration.none)),
            ),
            SizedBox(height: 20),
            DropdownButton(
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

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
                  dropdownvalue = newValue!;

                  if (dropdownvalue == 'Times Square') {
                    transits = 'MTA New York City Transit';
                  } else if (dropdownvalue == 'Central Park') {
                    transits = '110 Street Cathedral Parkway Subway Station';
                  } else if (dropdownvalue == 'Madison Square Garden') {
                    transits = 'Penn Station';
                  } else if (dropdownvalue == 'Empire State Building') {
                    transits = 'Penn Station';
                  } else if (dropdownvalue == 'Museum of Modern Art') {
                    transits = 'MTA Bus Stop';
                  }
                  destination = dropdownvalue;
                });
              },
            ),
            SizedBox(height: 20),
            Text(transits,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    decoration: TextDecoration.underline)),
            SizedBox(height: 20),
            Container(
              height: 61,
              width: 238,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ecar(),
                        ));
                  },
                  child: Text('Search',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none))),
            ),
            SizedBox(height: 120)
          ]),
    );
  }
}

String apped() {
  String result = destination;
  return result;
}
