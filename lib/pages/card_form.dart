import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:face_net_authentication/widgets/card_widget.dart';

class CardDetailsInputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text('Enter Card Details'), backgroundColor: Colors.grey[850]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(FontAwesomeIcons.check),
          backgroundColor: Colors.lightBlue),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ReusableCard(
          colour: Colors.grey[850],
          cardChild: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: 'Card Number',
                      hintStyle: TextStyle(color: Colors.grey[850])),
                  onChanged: (value) {},
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Card Number',
                      hintStyle: TextStyle(color: Colors.grey[850])),
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
