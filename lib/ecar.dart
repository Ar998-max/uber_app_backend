import 'package:flutter/material.dart';
import 'package:uber_app/RideCheap.dart';
import 'package:uber_app/booking.dart';

class Ecar extends StatefulWidget {
  const Ecar({super.key});

  @override
  State<Ecar> createState() => _EcarState();
}

var car = '';

class _EcarState extends State<Ecar> {
  String? dest;

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
            color: const Color.fromARGB(
                255, 255, 255, 255), //change your color here
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Text(
                            'Electric vehicles, and drop at public transit that goes to your destination',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none)),
                        SizedBox(height: 30),
                        Container(
                          height: 61,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: TextButton(
                              onPressed: () {
                                car = 'Electric Sedan';
                              },
                              child: Text('Electric Sedan',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none))),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 61,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: TextButton(
                              onPressed: () {
                                car = 'Electric SUV';
                              },
                              child: Text('Electric SUV',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none))),
                        ),
                        SizedBox(height: 35),
                      ])),
              SizedBox(height: 45),
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
                            builder: (context) => const Book(),
                          ));
                    },
                    child: Text('Book',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none))),
              ),
            ]));
  }
}

String appedc() {
  String resultc = car;
  return resultc;
}
