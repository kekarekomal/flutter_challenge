import 'package:flutter/material.dart';
import 'package:flutter_challenge/main.dart';

void main(){
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          leading: GestureDetector(
          onTap: () {Navigator.push(context,
           MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Icon(Icons.arrow_back, color: Colors.white,)),
          backgroundColor: Colors.teal[800],

          title: Text('Profile UI'),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            CircleAvatar(backgroundImage: AssetImage('images/komal.jpeg'),radius: 130,),
            Text('Komal Kekare',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            Text('Flutter Developer'),

            Card(
              child: ListTile(
                leading: Icon(Icons.call),
                title: Text('+91 81477429XX'),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('kekarekomal@gmail.com'),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
