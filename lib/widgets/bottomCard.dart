import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color: Color.fromRGBO(67, 39, 139, 2),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/player_icon.jpg'),
                          fit: BoxFit.fitHeight),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Worry About Me',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Ellie GouldSting, blockbuster',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Image(
                    image: AssetImage('images/heart.png'),
                    width: 17,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                //SizedBox(width: 5),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(253, 108, 57, 10),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: IconButton(
                          icon: Icon(Icons.pause, color: Colors.white),
                          onPressed: () {})),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home),
                    color: Color.fromRGBO(67, 39, 139, 2),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outline),
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                  IconButton(
                    icon: Image(
                      image: AssetImage('images/light_icon.png'),
                      width: 22,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
