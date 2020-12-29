import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Profile Page'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Image.asset('images/Ellipse_2.png'),
                SizedBox(height: 20,),
                Text('John Doe', style: TextStyle(fontSize: 30)),
              ],
            ),
          ),
        ),
    );
  }
}
