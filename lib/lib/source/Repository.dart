import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Repository extends StatefulWidget {
  @override
  _RepositoryState createState() => new _RepositoryState();
}
 
class _RepositoryState extends State<Repository> {
  String url = 'https://api.github.com/users/Nurrachmen/repos';
  List data;
  Future<String> makeRequest() async {
    var response = await http.get(
      Uri.encodeFull(url),
      headers: {"Accept": "application/json"}
    );
    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata;
    });
  }
 
  @override
  void initState(){
    this.makeRequest();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Repository Punya Rachman'),
          leading: Icon(Icons.data_usage),
        ),
        body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text(data[index]["name"]),
              subtitle: Text(data[index]["full_name"]),
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(data[index]["owner"]["avatar_url"]),
              )
            );
          }
      ),
    );
  }
}