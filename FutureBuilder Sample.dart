// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Widget createDownload(){
    return FutureBuilder(
              future : donwloadFile(),
              builder : (context, snapshot){
                if(snapshot.connectionState == ConnectionState.done){
                  
                  if(snapshot.hasError){
                    return Text('Error in downloading file');
                  }
                  
                  return Text('File Donwloaded : ' + snapshot.data.toString());
                }
                else{
                  return Text('Downloading File...');
                }
              }
              
            );
       }
  
  Future<String> donwloadFile(){
    
    Future<String> result = Future.delayed(Duration(seconds:6),(){
      return "My secret file";
    });
    
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createDownload(),
          ],
        ),
      ),
    );
  }
}
