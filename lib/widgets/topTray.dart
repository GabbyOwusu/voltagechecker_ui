import 'package:flutter/material.dart';
import 'package:new_ui/models/roomDetails.dart';

class TopTray extends StatelessWidget {
  final RoomDetails roomdetails;
  TopTray({
    this.roomdetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: roomdetails.color,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Center(
              child: Image(
                image: AssetImage(
        roomdetails.icon,
                ),
                width: 30, color: roomdetails.iconColor,
              ),
            ),
          ),
        SizedBox(height: 10),
        Text(roomdetails.text, style: TextStyle(color: roomdetails.textColor),)
      ],
    );
  }
}
