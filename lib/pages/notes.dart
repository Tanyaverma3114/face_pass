import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'notes_form.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Notes'), backgroundColor: Colors.grey[850]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NotesInputForm();
            }));
          },
          child: Icon(FontAwesomeIcons.plus),
          backgroundColor: Colors.lightBlue),
    );
  }
}
