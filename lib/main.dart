import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP flutter qui dépote',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  final List<String> tagsName = [
    "Flutter",
    "Kotlin",
    "Java",
    "Fortran",
    "Q#",
    "Rust"
  ];

  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> _pingedTags = [];

  @override
  Widget build(BuildContext context) {

    void _clicked (String click){
      setState(() {
        if(_pingedTags.contains(click)){
          _pingedTags.remove(click);
        } else {
          _pingedTags.add(click);
        }
      });
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Header(
              tagsName: _pingedTags,
            ),
            flex: 2,
          ),
          Expanded(
            child: Footer(
              tagsName: widget.tagsName,
              checkColor: _pingedTags,
              clicked: _clicked,
            ),
          ),
        ],
      ),
    );
  }
}
