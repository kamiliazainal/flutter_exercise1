
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  
  final singleTitle;
  final singleBody;

  PostPage({Key key, this.singleTitle, this.singleBody}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Post Page'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text('Title: ${widget.singleTitle}',
                style: TextStyle(fontSize: 30),),
                SizedBox(height: 20,
                
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Body: ${widget.singleBody}',
                  style: TextStyle(fontSize: 15),),
                ),
              ],
            ),
          ),
        ),
      );
  }
}