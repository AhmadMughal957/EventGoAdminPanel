
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_go_adminpanel/EventDetailPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';

import 'HomeScreen.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].
List globalValue = [];
List globalValue2 = [];
bool pressed=false;
double data=0;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyBu51K__CLTTQlwa963tCufKRd_Bx_h5nU",
        projectId: "eventgo-453da",
        messagingSenderId: "436380248444",
        storageBucket: "eventgo-453da.appspot.com",
        appId: "1:436380248444:web:3eb0a1b76953a0f2159cf9",
      )
  );
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: EventDetail(),
    ),
  );
}



