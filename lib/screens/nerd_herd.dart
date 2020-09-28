import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:nerd_herd_badge/widgets/id_photo.dart';

class NerdHerd extends StatefulWidget {
  @override
  _NerdHerdState createState() => _NerdHerdState();
}

class _NerdHerdState extends State<NerdHerd> {
  final logo = Image.asset(
    "assets/images/logo.png",
  );

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: new GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: new Center(
                child: Text("will change name + photo here..."),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 25),
              child: logo,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                bottom: 30.0,
              ),
              child: InkWell(
                onTap: () {
                  displayBottomSheet(context);
                  print("test");
                },
                child: PhotoImage('assets/images/profile.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  displayBottomSheet(context);
                },
                child: Text(
                  'CHUCK BARTOWSKI',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
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
    );
  }
}
