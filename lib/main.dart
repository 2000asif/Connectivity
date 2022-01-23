
import 'package:flutter/material.dart';
import 'asif.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff793f),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/26.jpg'),
              radius: 40,
            ),
            Text(
              'Md. Asif Dewan',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily:'AbrilFatface',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Mobile Android Developer',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'
              ),

            ),
            SizedBox(
              child: Divider(
                thickness: 6,
                color: Colors.black,
                height: 30,
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              // margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              //margin: EdgeInsets.only(top: ,right: ,left: ,bottom: ),
              child: ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Asif())
                  );
                },
                title: Text('asifcmt1819@gmail.com'),
                leading: Icon(Icons.email,color: Colors.orange,),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                onTap: (){},
                title: Text('+8801759232928'),
                leading: Icon(Icons.phone),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

