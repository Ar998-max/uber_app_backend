import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uber_app/RideCheap.dart';
import 'package:uber_app/specar.dart';

class BookC extends StatefulWidget {
  const BookC({super.key});

  @override
  State<BookC> createState() => _BookCState();
}

var li = [
  'Ann B. Williams',
  'Robin C.',
  'Guinevere Bosscha',
  'Felicienne Ouellet',
  'Rajih Yasin'
];
var randomItem = (li.toList()..shuffle()).first;

class _BookCState extends State<BookC> {
  var str = ' Destination' + ' ' + apped();
  var c = ' Car type' + ' ' + appedc();
  var drivename = ' Driver' + ' ' + randomItem;
  var cost = Random().nextInt(20) + 60;
  late String finc = ' Price' + ' ' + cost.toString() + ' dollars';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Special Needs',
              style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
          iconTheme: IconThemeData(
            color: const Color.fromARGB(
                255, 255, 255, 255), //change your color here
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 245, 249, 55),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(' Booked Successfully',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none)),
                        SizedBox(height: 30),
                        Text(drivename,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none)),
                        SizedBox(height: 20),
                        Text(c,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none)),
                        SizedBox(height: 20),
                        Text(str,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none)),
                        SizedBox(height: 20),
                        Text(finc,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none)),
                        SizedBox(height: 20),
                        Text(' Ride arriving in 5 minutes',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none)),
                        SizedBox(height: 32),
                      ])),
            ]));
  }
}
