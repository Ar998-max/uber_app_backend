import 'package:flutter/material.dart';
import 'package:uber_app/specar.dart';

class Speneed extends StatefulWidget {
  const Speneed({super.key});

  @override
  State<Speneed> createState() => _SpeneedState();
}

class _SpeneedState extends State<Speneed> {
  String dropdownvalue = 'Central Park';
  RegExp _digitRegex = RegExp("[0-9]+");
  // List of items in our dropdown menu
  var items = [
    'Central Park',
    'Times Square',
    'Madison Square Garden',
    'Empire State Building',
    'Museum of Modern Art',
  ];
  TextEditingController textController = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 109, 203, 255),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' We care for \n you',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none)),
                        Text(
                            ' Ride safer comfortably\n with wheelchairs provision, \n helpful drivers and more.',
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
              DropdownButtonFormField(
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
                  });
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                cursorColor: Colors.black,
                style: TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                decoration: InputDecoration(
                  hintText: "Emergency Contact",
                  filled: true,
                  fillColor: Color.fromARGB(255, 217, 217, 217),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                ),
                controller: textController,
                keyboardType: TextInputType.phone,
                maxLength: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom,
              ),
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
                            builder: (context) => const Specar(),
                          ));
                    },
                    child: Text('Search',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none))),
              ),
            ]));
  }
}
