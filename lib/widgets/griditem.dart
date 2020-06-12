import 'package:flutter/material.dart';
import 'package:new_ui/models/details.dart';
import 'package:new_ui/screens/settingsPage.dart';

class GridItem extends StatelessWidget {
  final CardDetails cardDetails;

  const GridItem({this.cardDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BedRoom()));
          },
          child: Container(
            padding: EdgeInsets.all(10),
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              color: cardDetails.color,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.withOpacity(0.3)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage(cardDetails.icon),
                  width: 27,
                  color: cardDetails.iconColor,
                ),
                Spacer(),
                Text(
                  cardDetails.title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: cardDetails.textColor),
                ),
                Text(
                  '1 device',
                  style: TextStyle(fontSize: 15, color: Colors.black38),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
