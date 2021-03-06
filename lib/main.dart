import 'package:flutter/material.dart';
import 'package:new_ui/providers/cardDetailsprovider.dart';
import 'package:new_ui/screens/home.dart';
import 'package:provider/provider.dart';

import 'providers/roomDetailsProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DetailsProvider>(
          create: (_) => DetailsProvider(),
        ), ChangeNotifierProvider<RoomDetailsProvider>(
          create: (_) => RoomDetailsProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
