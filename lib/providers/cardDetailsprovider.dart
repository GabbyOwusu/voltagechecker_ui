import 'package:flutter/material.dart';
import 'package:new_ui/models/details.dart';
import 'package:new_ui/providers/baseprovider.dart';

class DetailsProvider extends BaseProvider {
  List<CardDetails> get details {
    return <CardDetails>[
      CardDetails(
        title: 'Bathroom',
        icon: 'images/tub.png',
        color: Color.fromRGBO(253, 108, 57, 10),
        iconColor: Colors.white,
        textColor: Colors.white,
      ),
      CardDetails(
        title: 'Living Room',
        icon: 'images/couch.png',
        color: Colors.white,
        textColor: Colors.black,
        iconColor: Color.fromRGBO(253, 108, 57, 10),
      ),
      CardDetails(
        title: 'Kitche',
        icon: 'images/kitchen.png',
        iconColor: Color.fromRGBO(253, 108, 57, 10),
        color: Colors.white,
        textColor: Colors.black,
      ),
      CardDetails(
        title: 'Dinning Room',
        icon: 'images/dinning.png',
        iconColor: Color.fromRGBO(253, 108, 57, 10),
        textColor: Colors.black,
      ),
    ];
  }
}


