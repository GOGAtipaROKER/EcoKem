import 'dart:ui';

import 'package:flutter/material.dart';

class aboutApp extends StatefulWidget {
  const aboutApp({Key? key}) : super(key: key);

  @override
  State<aboutApp> createState() => _aboutAppState();
}

class _aboutAppState extends State<aboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.green,
        //centerTitle: true,
        flexibleSpace: Container(
      decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage('images/gachi.gif')),
    ),
    ),
          //style: TextStyle(color: Colors.white),),),,
    ),
    body: Column(
      children: [aboutWidget()],
    ),
    );
  }
}

class aboutWidget extends StatelessWidget {
  const aboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: (Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Center(
            child: Text(
              'Пиздатое приложение', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          //Text('Пиздатое приложение', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ],
      )),
    );
  }
}
