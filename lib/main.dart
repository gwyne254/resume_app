import 'package:flutter/material.dart';
import 'package:resume_app/text_section/text_classes.dart';

import 'image_section/image_classes.dart';

void main() {
  runApp(const MyApp());
}

const darkBlueColor = Color(0xff536599);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Resume Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.menu),
                )),
          ]),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_portifolio()],
        ),
      ),
    );
  }
}

_portifolio() => Expanded(
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              // Text('PORTIFOLIO'),
              // Text(
              // 'With great satisfaction, here are some my past projects for my clients'),
              RegularText('PORTIFOLIO',
                  'With great satisfaction, here are some my past projects for my clients'),
              ImageBanner("assets/images/work-1.jpg")
            ],
          ),
        ),
      ),
    );

_serviceList() => Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: const Text('This is Services List'),
    );

_serviceDetail() => Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: const Text('This is Services Detail'),
    );

_contactForm() => Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: const Text('This is contact form'),
    );

_form() => Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: const Text('This is form'),
    );
