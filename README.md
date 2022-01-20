
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: HomePage(

      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription? subscription;


  Future checkConnection() async{

    var connectivityResult=await(Connectivity().checkConnectivity());
    if(connectivityResult==ConnectivityResult.mobile){
      Fluttertoast.showToast(msg: "Connect b with mobile ");

    }
    else if(connectivityResult==ConnectivityResult.wifi){
      Fluttertoast.showToast(msg: "Connect with Wi-Fi");
    }
    else{
      Fluttertoast.showToast(msg: "No internet Connection");


    }
  }
  @override
  void iniState(){
    subscription =Connectivity().onConnectivityChanged.listen((event) {checkConnection();
    }
    );
    super.initState();
  }






  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeafffd),
      appBar: AppBar(
        backgroundColor: Color(
            0xff14cdc8),
        title: Center(child: Text('Md. Asif Dewan',
          style: TextStyle(
              fontSize: 30,
              color: Color(0xffecf0f1),
            fontFamily: 'Pushster'
        ),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(onPressed: checkConnection,
              child: Text(
                'Check connection',
                style: TextStyle(fontSize: 22,
                color: Color(0xff7f8c8d),
                fontFamily: 'Pushster'
                ),
              ),)



          ],
        ),
      ),




    );
  }
}














