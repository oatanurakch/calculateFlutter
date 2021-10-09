import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  // const CAlculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {

  // Variable user input in material box
  TextEditingController windspeed = TextEditingController();
  double unit = 3.6;
  TextEditingController result = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    result.text = 'Windspeed 0 m/s = 0 km/hr';
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/elect.png',
                  width: 150,
                ),
                Text(
                  'Change unit Windspeed',
                  style: TextStyle(
                      fontFamily: 'duck', fontSize: 50, color: Colors.black),
                ),
                TextField(
                  controller: windspeed,
                  decoration: InputDecoration(
                      labelText: 'Windspeed (m/s)',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {   //onPressed is click button
                    // int.parse() or double.parse() to change text to int or double
                    var calwindspeed = double.parse(windspeed.text) * unit;   // .text is read data from text box

                    setState(() {   //setState is refresh webpage
                      result.text =
                          'Windspeed ${windspeed.text} m/s = $calwindspeed km/hr';
                    });
                  },
                  child: (Text("Change Unit")),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[600]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(50, 20, 50, 20)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 30))),
                ),
                Text(
                  result.text,
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}