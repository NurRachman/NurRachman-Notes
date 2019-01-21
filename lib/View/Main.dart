import 'package:flutter/material.dart';
import '../model/Notes.dart';
import './Adapter/HomeAdapter.dart';
import './../Routes.dart';

class Main extends StatelessWidget {
  static String tag = "index-tag";
  Main({Key key, this.title}) : super(key: key);
  final String title;
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SlideMenu(),
      routes: routes,
    );
  }
}

final List<Notes> data = <Notes>[
  Notes('Rocket Projets', '08:00', 'Jakarta', 'industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
  Notes('Rachman Studios', '12:00', 'Bogor', 'industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
  Notes('Rachman Industries', '10:00', 'Jakarta', 'industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book')
];

class FragNotes extends StatelessWidget {
  static final String routeName = '/notes';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
          Navigator.of(context).pushNamed('/detail');
        },
        tooltip: 'Add New Notes',
        elevation: 2,
        child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(
          'Bar',
          style: new TextStyle(
            fontSize: 24.0
          )
        ),
      ),
    );
  }

}

class SlideMenu extends StatefulWidget {
  @override
 State<StatefulWidget> createState() {
    return SlideMenuState();
  }
}
class SlideMenuState extends State<SlideMenu>{
  int _counterIndex = 0;
  String _title = "Home";
  final List<Widget> _children = [
    Bar(),
    FragNotes(),
  ];
  @override
  Widget build(BuildContext context){
          return Scaffold(
        appBar: AppBar(
          title: Text(_title),
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
              UserAccountsDrawerHeader(
                accountName: Text("Ghea Indrawari"),
                accountEmail: Text("NurRachmen@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: ghea,
                ),
              ),
              ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              selected: true,
              onTap: () {
                onTabTapped(0, "Home");
              },
            ),
            ListTile(
              title: Text('Notes'),
              leading: Icon(Icons.info),
              onTap: () => onTabTapped(1, "Notes"),
            ),
            ],
          ),
        ),
        body: Navigator(
          onGenerateRoute: (RouteSettings settings){
            return MaterialPageRoute(
              builder: (_) => _children[_counterIndex]
            );
          }
        ),
      );
  }
  void onTabTapped(int index, String title) {
  Navigator.of(context).pop();
   setState(() {
     _counterIndex= index;
   });
   setState(() {
     _title = title;
   });
 }
 final ghea = Hero(
      tag : 'ghea',
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('lib/assets/gheaProfile.jpg'),
        ),
      ),
    );
}