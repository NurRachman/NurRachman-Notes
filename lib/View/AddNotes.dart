import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  @override
  AddNotesState createState(){
    return AddNotesState();
  }
}

class AddNotesState extends State<AddNotes>{
  final finalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Notes'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: (){
              finalKey.currentState.reset();
            },
          ),
          IconButton(
            icon: Icon(Icons.done),
            onPressed: (){
              if (finalKey.currentState.validate()) {
                
              }
            },
          ),
        ],
      ),
      body: Form(
        key: finalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Title *'
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some title';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Description *'
                    ),
                    maxLines: 4,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some title';
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}