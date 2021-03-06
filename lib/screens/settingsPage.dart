import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ui/models/roomDetails.dart';
import 'package:new_ui/providers/cardDetailsprovider.dart';
import 'package:new_ui/providers/roomDetailsProvider.dart';
import 'package:new_ui/widgets/temperatureReader.dart';
import 'package:new_ui/widgets/topTray.dart';
import 'package:provider/provider.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  RoomDetailsProvider get provider {
    return Provider.of<RoomDetailsProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Bed Room',
          style: TextStyle(
            fontSize: 28,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20, left: 5, right: 5),
        children: <Widget>[
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    TopTray(roomdetails: provider.roomDetails[index]),
                separatorBuilder: (context, index) => SizedBox(width: 25),
                itemCount: 5),
          ),
          SizedBox(height: 10),
          TemperatureReader(),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Current Temperature',
                          style: TextStyle(color: Colors.grey),
                        ),
                        RichText(
                            text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: [
                              TextSpan(
                                text: '16.5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 25),
                              ),
                              TextSpan(
                                text: '°C',
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.none,
                                    fontSize: 25),
                              ),
                            ])),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Current humidity',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '60%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 8, right: 20),
                child: Text(
                  'Turn ON/OFF',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, right: 20),
                child: CupertinoSwitch(
                  value: true,
                  onChanged: (bool value) {},
                  activeColor: Color.fromRGBO(67, 39, 139, 9),
                ),
              )
            ],
          ),
          SizedBox(height: 23),
          Column(
            children: <Widget>[
              Container(
                height: 60,
                width: 370,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(67, 39, 139, 9),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'Set Temperature',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
