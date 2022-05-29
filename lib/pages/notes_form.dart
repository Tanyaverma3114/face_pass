import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesInputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:
          AppBar(title: Text('Write Notes'), backgroundColor: Colors.grey[850]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(FontAwesomeIcons.check),
          backgroundColor: Colors.lightBlue),
    );
  }
}
