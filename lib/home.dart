import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Just Post'),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                  child: Text('Post'),
                  onPressed: () async {
                    var url = 'https://example.com/whatsit/create';
                    var response = await http.get(url);
                    print('Response status: ${response.statusCode}');
                    print('Response body: ${response.body}');
                  })
            ],
          ),
        ));
  }
}
