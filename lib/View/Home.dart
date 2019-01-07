import 'package:flutter/material.dart';
import '../model/Notes.dart';
import './Adapter/HomeAdapter.dart';
import '../View/AddNotes.dart';

class Home extends StatelessWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.event_available),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      'Muhammad Nur Rachman',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.white
                      ),
                    ),
                    new Padding( padding: const EdgeInsets.all(2) ),
                    Text(
                      'NurRachmen@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              selected: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.info),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ],
          ),
        ),
        body: Container(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                color: Colors.grey,
                padding: const EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      'Reminders',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '15',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) => HomeAdapter(data[index]),
                    itemCount: data.length,
                  ),
                ),
             ],
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddNotes()),
          );
        },
        tooltip: 'Increment',
        elevation: 2,
        child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );
  }
}

final List<Notes> data = <Notes>[
  Notes('Rocket Projets', '08:00', 'Jakarta', 'industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
  Notes('Rachman Studios', '12:00', 'Bogor', 'industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
  Notes('Rachman Industries', '10:00', 'Jakarta', 'industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book')
];