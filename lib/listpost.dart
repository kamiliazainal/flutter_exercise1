import 'package:exercise1/postpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() => runApp(ListPost());

class ListPost extends StatefulWidget {
  @override
  _ListPostState createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  List data;
  List data2;
  //data3 combine data + data2
  //pakai list(ANY NAME).add(item)
  //atau buat class, then pakai list.add(item)

  Future<void> getPosts() async {
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      setState(() {
        data = jsonResponse;
        print(data);
      });
    } else {
      print('error');
    }
  }

  Future<void> getImages() async {
    var image = 'https://jsonplaceholder.typicode.com/photos';
    var res = await http.get(image);
    if (res.statusCode == 200) {
      var jsonRes = convert.jsonDecode(res.body);
      setState(() {
        data2 = jsonRes;
        print(data2);
      });
    } else {
      print('error2');
    }
  }

  @override
  void initState() {
    super.initState();
    getPosts();
    getImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of post'),
      ),
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage(data2[index]['thumbnailUrl'])),
                title: Text(data[index]['title']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PostPage(singleTitle: data[index]['title'], singleBody: data[index]['body'], )),
                  );
                },
              ),
              elevation: 3,
            );
          }),
    );
  }
}
