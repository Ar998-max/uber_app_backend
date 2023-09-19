import 'package:flutter/material.dart';
import 'package:uber_app/RideCheap.dart';
import 'package:uber_app/SpecialNeed.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 110),
          Container(
              height: 150,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 51, 38),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Request A Ride',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none))
                ],
              )),
          SizedBox(height: 80),
          Container(
            width: double.infinity,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => name(),
                    ),
                  );
                },
                child: Text('Ride Cheap',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ))),
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Speneed(),
                    ),
                  );
                },
                child: Text('Special needs',
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontSize: 35))),
          )
        ],
      ),
    );
  }
}
