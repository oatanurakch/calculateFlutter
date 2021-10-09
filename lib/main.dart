import 'package:calculate/pages/calc.dart';
import 'package:calculate/pages/contact.dart';
import 'package:calculate/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainPageState()
    );
  }
}

class MainPageState extends StatefulWidget {
  // const MainPageState({ Key? key }) : super(key: key);

  @override
  _MainPageStateState createState() => _MainPageStateState();
}

class _MainPageStateState extends State<MainPageState> {

  int _currentIndex = 0;
  final tabs = [Homepage(), CalculatePage(), ContactPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Change unit Windspeed',
              style: TextStyle(fontFamily: 'duck', fontSize: 30))),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Homepage"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculate"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_phone), label: "Contact"),
        ],

        onTap: (index){
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}