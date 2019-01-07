import 'package:flutter/material.dart';
import '../../model/Notes.dart';

class HomeAdapter extends StatelessWidget{
  final Notes notes;
  HomeAdapter(this.notes);
  
  Widget notesAdapter(Notes notes){
      return Container(
        margin: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${notes.title}',
              style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18 )
            ),
            Padding(
              padding: const EdgeInsets.all(4)
            ),
             Container(
              margin: const EdgeInsets.only(top: 4, bottom: 4),
              child: Row(
                children: <Widget>[
                  Text(
                    '${notes.time}',
                    style: TextStyle( fontSize: 14, color: Colors.green, fontWeight: FontWeight.bold )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8)
                  ),
                  Text(
                    '${notes.place}',
                    style: TextStyle( color: Colors.grey )
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(4)
            ),
            Text(
              '${notes.content}',
              maxLines: 2,
              style: TextStyle( color: Colors.grey )
            ),
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return notesAdapter(notes);
  }
}