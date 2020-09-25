import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:nerd_herd_badge/widgets/id_photo.dart';

class NerdHerd extends StatefulWidget {
  @override
  _NerdHerdState createState() => _NerdHerdState();
}

class _NerdHerdState extends State<NerdHerd> {
  final logo = Image.asset(
    "assets/logo.png",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 25),
                child: logo,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0,
                  bottom: 30.0,
                ),
                child: PhotoImage('assets/profile.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                child: Text(
                  'CHUCK BARTOWSKI',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: BarcodeWidget(
                  barcode: Barcode.code39(), // Barcode type and settings
                  data: 'CHUCK',
                  drawText: false,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
