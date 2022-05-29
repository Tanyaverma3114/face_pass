import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'website_form.dart';

class Websites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:
          AppBar(title: Text('Websites'), backgroundColor: Colors.grey[850]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return WebsiteDetailsInputForm();
            }));
          },
          child: Icon(FontAwesomeIcons.plus),
          backgroundColor: Colors.lightBlue),
    );
  }
}
