import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'documents_form.dart';

class Documents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:
          AppBar(title: Text('Documents'), backgroundColor: Colors.grey[850]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DocumentsInputForm();
            }));
          },
          child: Icon(FontAwesomeIcons.plus),
          backgroundColor: Colors.lightBlue),
    );
  }
}
