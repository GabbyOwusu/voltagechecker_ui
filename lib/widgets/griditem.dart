import 'package:flutter/material.dart';
import 'package:new_ui/models/details.dart';

class GridItem extends StatelessWidget {
  final CardDetails cardDetails;

  const GridItem({this.cardDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          width: 200,
          height: 180,
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
      ],
    );
  }
}
