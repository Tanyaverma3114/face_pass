import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton(
      {this.onPressed,
      this.text,
      this.color = const Color(0xFF000000),
      this.icon = const Icon(
        Icons.add,
        color: Colors.lightBlue,
      )});
  final Function onPressed;
  final String text;
  final Icon icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.073),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 0.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.lightBlue),
            ),
            SizedBox(
              width: 10,
            ),
            icon
          ],
        ),
      ),
    );
  }
}
