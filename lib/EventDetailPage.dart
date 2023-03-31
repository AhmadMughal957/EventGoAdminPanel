import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_go_adminpanel/class/Detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({Key? key}) : super(key: key);

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  List<String> S_array = [];
  var fees;
  var name;
  var type;
  var date;
  var time;
  var address;
  var desc;
  var image;
  void _addImages(String input) {
    setState(() {
      S_array.add(input);
    });
  }
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()
      ..init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height:scaler.getHeight(100),
            width: scaler.getWidth(100),
            child:Stack(
              children: [

                Container(
                  height:scaler.getHeight(99),
                  width: scaler.getWidth(99),

                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: scaler.getPaddingLTRB(25,10,0,10),
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                        ),

                        height:scaler.getHeight(75),
                        width: scaler.getWidth(50),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: scaler.getHeight(10),
                                width: scaler.getWidth(38),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.drive_file_rename_outline,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                      ),

                                      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: 'Enter name of your event'),
                                  onChanged: (value){
                                    name=value;
                                  },
                                ),
                              ),
                              Container(
                                height: scaler.getHeight(10),
                                width: scaler.getWidth(38),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.drive_file_rename_outline,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                      ),

                                      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: 'Enter the type of your event'),
                                  onChanged: (value){
                                    type=value;
                                  },
                                ),
                              ),
                              Container(
                                height: scaler.getHeight(10),
                                width: scaler.getWidth(38),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.drive_file_rename_outline,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                      ),

                                      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: 'Enter Registration Fees'),
                                  onChanged: (value){
                                    fees=value;
                                  },
                                ),
                              ),
                              Container(
                                height: scaler.getHeight(10),
                                width: scaler.getWidth(38),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.drive_file_rename_outline,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                      ),

                                      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: 'Enter Events Date'),
                                  onChanged: (value){
                                    date=value;
                                  },
                                ),
                              ),
                              Container(
                                height: scaler.getHeight(10),
                                width: scaler.getWidth(38),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.drive_file_rename_outline,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                      ),

                                      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: 'Enter Events Description'),
                                  onChanged: (value){
                                    desc=value;
                                  },
                                ),
                              ),
                              Container(
                                height: scaler.getHeight(10),
                                width: scaler.getWidth(38),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.drive_file_rename_outline,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                      ),

                                      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: 'Enter Event Time'),
                                  onChanged: (value){
                                    time=value;
                                  },
                                ),
                              ),
                              Container(
                                height: scaler.getHeight(10),
                                width: scaler.getWidth(38),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.drive_file_rename_outline,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                      ),

                                      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: 'Enter Images Url'),
                                  onChanged: (input){
                                    _addImages(input);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 450),
                                child: Container(
                                  height: 50,
                                  width: 500,
                                  child: ListView.builder(
                                    itemCount: S_array.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        children: [
                                          Text("Size :${S_array[index]}",
                                            style: TextStyle(
                                                color: Colors.black
                                            ),),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                height: scaler.getHeight(10),
                                width: scaler.getWidth(38),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.drive_file_rename_outline,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                      ),

                                      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: 'Enter Address of your event'),
                                  onChanged: (value){
                                    address=value;
                                  },
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: (){
                                    createUser();
                                  }, child: Text('Create'))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ])
          )
        ],
      ),
    );
  }

  Future createUser() async {
    final docUser = FirebaseFirestore.instance.collection('Events').doc(name);

    final user = Catalogmodel(
      fees: fees,
      images: S_array,
      desc: desc,
        type: type,
        date: date,
        time: time,
        name: name,
        address: address
    );
    final json = user.toJson();
    await docUser.set(json);
  }
}
