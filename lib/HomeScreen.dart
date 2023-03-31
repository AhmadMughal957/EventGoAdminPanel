import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

import 'EventDetailPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()
      ..init(context);
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EventDetail()));
    },
            child: Card(
              child: Container(
                alignment: Alignment.center,
                height: scaler.getHeight(50),
                width: scaler.getWidth(80),
                child: Text('Create Your Event'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
