 import 'package:flutter/material.dart';
import 'package:file_manager/InitialPage.dart';
import 'package:file_manager/SecondPage.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes:{
      '/':(context)=>FirstPage(),
      '/second':(context)=>NextPage()
    },
  ));
}
