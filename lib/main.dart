import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List mycolors = ["blue", "green", "red", "purple  "];
  // List mycolorsinflutter = [
  //   Colors.blue,
  //   Colors.green,
  //   Colors.red,
  //   Colors.purple
  // ];
  // List colorNumber = ["One", "Two", "Three", "Four"];
  // List imageItrailing = [
  //   "https://media.istockphoto.com/photos/balloons-isolated-picture-id1146751350?k=20&m=1146751350&s=612x612&w=0&h=eUHcWdtW0irK88SL1bLbvme_ZIySupmCb9re7suR3MM=",
  //   "https://media.istockphoto.com/photos/balloons-bunch-green-beautiful-picture-id955600334?k=20&m=955600334&s=612x612&w=0&h=xWrjeMWqCHkTGbrOSkWO98YBz_AGY0RH0k-KKq70K7U=",
  //   "https://media.istockphoto.com/photos/red-balloon-3d-rendering-picture-id1201224687?k=20&m=1201224687&s=612x612&w=0&h=VZUgCi7AGg-3jUhGdPLO8WtKl6n4lHhEbWVndk29pOE=",
  //   "https://media.istockphoto.com/photos/balloons-of-pink-color-pink-background3d-illustration-picture-id1334513614?k=20&m=1334513614&s=612x612&w=0&h=T9qJJ_60v7q1xfjOseJb2oX_yqoR85nCbmOqmBawaxI=",
  // ];
  int leftImageNumber = 9;
  int rightImageNumber = 4;
  void changImage(){

     rightImageNumber = Random().nextInt(8) + 1;
                          leftImageNumber = Random().nextInt(8) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('تطابق'),
          backgroundColor: Colors.indigo[800],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              leftImageNumber == rightImageNumber
                  ? "مبروك لقد فزت"
                  : 'حاول مرة اخرى',
              style: TextStyle(fontSize: 42.0, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      child: Image.asset('images/image-$leftImageNumber.png'),
                      onPressed: () {
                        print('الزر اليساري');
                        setState(() {
                          changImage();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Image.asset('images/image-$rightImageNumber.png'),
                      onPressed: () {
                        print('الزر اليميني');
                        setState(() {
                          changImage();
                        });
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
