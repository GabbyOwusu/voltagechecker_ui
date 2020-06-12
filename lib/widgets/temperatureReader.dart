import 'package:flutter/material.dart';

class TemperatureReader extends StatelessWidget {
  const TemperatureReader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(.3)),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                  width: 280,
                  height: 2,
                  color: Color.fromRGBO(67, 39, 139, 9)),
              Container(
                width: 2,
                height: 280,
                color: Color.fromRGBO(67, 39, 139, 9),
              ),
              Container(
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(67, 39, 139, 9)
                              .withOpacity(.5),
                          spreadRadius: -30,
                          blurRadius: 500,
                          offset: Offset(-30, 20))
                    ]),
                child: Center(
                  child: RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                        TextSpan(
                          text: '18.5',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 28),
                        ),
                        TextSpan(
                          text: '°C',
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                              fontSize: 28),
                        ),
                      ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
