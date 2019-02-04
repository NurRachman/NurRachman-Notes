// import 'dart:async';
// import 'dart:convert';
import 'package:flutter/material.dart';
import 'Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.white,
      // home: new MyHomePage(),0
      routes: routes,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }
 
// class _MyHomePageState extends State<MyHomePage> {
//   String url = 'https://api.github.com/users/Nurrachmen/repos';
//   List data;
//   Future<String> makeRequest() async {
//     var response = await http.get(
//       Uri.encodeFull(url),
//       headers: {"Accept": "application/json"}
//     );
//     setState(() {
//       var extractdata = json.decode(response.body);
//       data = extractdata;
//     });
//   }
 
//   @override
//   void initState(){
//     this.makeRequest();
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Repository Punya Rachman'),
//           leading: Icon(Icons.data_usage),
//         ),
//         body: ListView.builder(
//           itemCount: data == null ? 0 : data.length,
//           itemBuilder: (BuildContext context, index) {
//             return ListTile(
//               title: Text(data[index]["name"]),
//               subtitle: Text(data[index]["full_name"]),
//               leading: CircleAvatar(
//                 backgroundImage:
//                     NetworkImage(data[index]["owner"]["avatar_url"]),
//               )
//             );
//           }
//       ),
//     );
//   }
// }

// Future<Post> fetchPost() async {
//   final response = await http.get('https://jsonplaceholder.typicode.com/posts');
//   if (response.statusCode == 200) {
//     print(json.decode(response.body));
//     // return Post.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to load post');
//   }
// }

// class Post {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   Post({this.userId, this.id, this.title, this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   final post = fetchPost();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Handle API"),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(16),
//           child: Center(
//             child: FutureBuilder<Post>(
//             future: post,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data.body);
//               } else if (snapshot.hasError) {
//                 return Text("${snapshot.error}");
//               }
//               return CircularProgressIndicator();
//             },
//           ),
//           )
//         ),
//       ),
//     );
//   }
// }
