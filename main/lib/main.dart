import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 85, 84, 192),
          title: Text('Moscow City Tour'),
        ),
        backgroundColor: Color.fromARGB(255, 120, 102, 224),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/moscow.jpg"),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.rectangle,
          ),
        ),
        Container(
          child: Text(
            "Address: улица, Zoi I Aleksandra Kosmodem'yanskikh Ulitsa, 4 корп 1,\nMoscow, Russia, 117447 ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ),
        SizedBox(height: 30,),
        Container(
          
          child: Text(
            "People",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ),
         Container(
          
          child: Text(
            "Pick how many people going to join this trip ",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ),
        Row(
          children: [
            AppButtons(
              textColor: Colors.white,
              backgroundColor: Colors.black,
              borderColor: Colors.black,
              text: "1",
              size: 50,
            ),
            AppButtons(
              textColor: Colors.white,
              backgroundColor: Colors.black,
              borderColor: Colors.black,
              text: "2",
              size: 50,
            ),
            AppButtons(
              textColor: Colors.white,
              backgroundColor: Colors.black,
              borderColor: Colors.black,
              text: "3",
              size: 50,
            ),
            AppButtons(
              textColor: Colors.white,
              backgroundColor: Colors.black,
              borderColor: Colors.black,
              text: "4",
              size: 50,
            ),
            AppButtons(
              textColor: Colors.white,
              backgroundColor: Colors.black,
              borderColor: Colors.black,
              text: "5",
              size: 50,
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
        Row(
          children: [
            AppButtons(
              textColor: Color.fromARGB(255, 82, 3, 119),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              borderColor: Colors.black,
              text: "Book Trip Now ",
              size: 40,
            ),
            AppButtons(
              textColor: Colors.white,
              backgroundColor: Colors.black,
              borderColor: Colors.black,
              text: "Book Trip Now ",
              size: 100,
            ),
          ],
        )
      ],
    );
  }
}

class AppButtons extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  IconData? icon;
  double size;
  AppButtons(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.size,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 1)),
    );
  }
}
