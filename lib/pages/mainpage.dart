import 'dart:io';

import 'package:face_net_authentication/pages/notes_form.dart';
import 'package:face_net_authentication/pages/website_form.dart';
import 'package:face_net_authentication/widgets/app_button.dart';
import 'package:face_net_authentication/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
import 'dart:math' as math;
import 'card_form.dart';
import 'website_form.dart';
import 'notes_form.dart';

class Profile extends StatelessWidget {
  const Profile(this.username, {Key key, this.imagePath}) : super(key: key);
  final String username;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final double mirror = math.pi;
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
          title: Text('Hey $username!'), backgroundColor: Colors.blue[600]),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.lightBlueAccent,
        animatedIcon: AnimatedIcons.add_event,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        children: [
          SpeedDialChild(
              child: Icon(FontAwesomeIcons.stickyNote, color: Colors.white),
              backgroundColor: Colors.grey[800],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NotesInputForm();
                }));
              }),
          SpeedDialChild(
              child: Icon(FontAwesomeIcons.globe, color: Colors.white),
              backgroundColor: Colors.grey[800],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WebsiteDetailsInputForm();
                }));
              }),
          SpeedDialChild(
              child: Icon(FontAwesomeIcons.creditCard, color: Colors.white),
              backgroundColor: Colors.grey[800],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CardDetailsInputForm();
                }));
              }),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(70),
        child: Center(
          child: Text(
            'Add Entries',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
