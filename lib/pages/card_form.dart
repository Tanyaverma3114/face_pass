import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:face_net_authentication/widgets/card_widget.dart';
import 'package:face_net_authentication/widgets/text_input_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardDetailsInputForm extends StatelessWidget {
  final _cardFields = [
    'Card name',
    'Card number',
    'Card type',
    'Card holder',
    'Valid through',
    'CVV',
    'PIN'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          leading: IconButton(
            splashRadius: 20,
            icon: Icon(Icons.close, color: Colors.white, size: 25),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Enter Card Details'),
          backgroundColor: Colors.grey[850]),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Navigator.pop(context);
            await Fluttertoast.showToast(
              msg: 'New Card Added',
              fontSize: 16,
            );
          },
          child: Icon(FontAwesomeIcons.check),
          backgroundColor: Colors.lightBlue),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Flexible(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _cardFields.length,
            itemBuilder: (listViewContext, index) {
              return TextInputField(hintText: _cardFields[index]);
            },
          ),
        ),
      ),
    );
  }
}
