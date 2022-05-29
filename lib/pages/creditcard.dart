import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_form.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:
          AppBar(title: Text('Bank Cards'), backgroundColor: Colors.grey[850]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CardDetailsInputForm();
            }));
          },
          child: Icon(FontAwesomeIcons.plus),
          backgroundColor: Colors.lightBlue),
    );
  }
}
