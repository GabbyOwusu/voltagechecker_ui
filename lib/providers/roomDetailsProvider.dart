import 'package:flutter/material.dart';
import 'package:new_ui/models/roomDetails.dart';

import 'baseprovider.dart';

class RoomDetailsProvider extends BaseProvider {
  List<RoomDetails> get roomDetails {
    return <RoomDetails>[
      RoomDetails(
        icon: 'images/heater.png',
        iconColor: Colors.white,
        color: Color.fromRGBO(253, 108, 57, 10),
        text: 'Heater',
        textColor: Color.fromRGBO(253, 108, 57, 10),
      ),
      RoomDetails(
        icon: 'images/music.png',
        iconColor: Colors.black,
        color: Colors.white,
        text: 'Sound',
        textColor: Colors.black,
      ),
      RoomDetails(
        icon: 'images/fan.png',
        iconColor: Colors.black,
        color: Colors.white,
        text: 'Fan',
        textColor: Colors.black,
      ),
      RoomDetails(
        icon: 'images/bulb.png',
        iconColor: Colors.black,
        color: Colors.white,
        text: 'Light',
        textColor: Colors.black,
      ),
      RoomDetails(
        icon: 'images/fridge.png',
        iconColor: Colors.black,
        color: Colors.white,
        text: 'Fridge',
        textColor: Colors.black,
      ),
    ];
  }
}
