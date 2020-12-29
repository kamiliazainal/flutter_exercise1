import 'package:flutter/material.dart';

class ListImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Row(
        //   children: [
        //     RaisedButton(
        //           child: Text('Go to Post Page'),
        //           onPressed: () {
        //             Navigator.pushNamed(context, 'post');
        //           })
        //   ],
        // ),
        Text(
          'Gallery',
        style: TextStyle(fontSize: 30),
        //, backgroundColor: Colors.blue
        ),
        SizedBox(height: 20,),
        Container(
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 50,),
              Container(
                width: 189,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('1');
                      },
                      child: Image.asset('images/image1.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 205,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('2');
                      },
                      child: Image.asset('images/image2.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 245,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('3');
                      },
                      child: Image.asset('images/image3.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 215,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('4');
                      },
                      child: Image.asset('images/image4.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 240,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('5');
                      },
                      child: Image.asset('images/image5.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50,),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 50,),
              Container(
                // width: 189,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('6');
                      },
                      child: Image.asset('images/Rectangle_1.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                // width: 205,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('2');
                      },
                      child: Image.asset('images/Rectangle_2.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                // width: 245,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('3');
                      },
                      child: Image.asset('images/Rectangle_3.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                // width: 215,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('4');
                      },
                      child: Image.asset('images/Rectangle_4.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                // width: 240,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                          print('5');
                      },
                      child: Image.asset('images/Rectangle_5.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50,),
            ],
          ),
        ),
      ],
    );
  }
}