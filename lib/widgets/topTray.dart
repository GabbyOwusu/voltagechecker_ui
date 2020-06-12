import 'package:flutter/material.dart';

class TopTray extends StatelessWidget {
  const TopTray({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 1)),
                  ),
                  SizedBox(height: 10),
                  Text('data')
                ],
              ),
          separatorBuilder: (context, index) => SizedBox(width: 25),
          itemCount: 10),
    );
  }
}
