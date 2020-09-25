import 'dart:ui';

import 'package:flutter/material.dart';

class PhotoImage extends StatelessWidget {
  final String _assetPath;
  PhotoImage(this._assetPath);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 280.0,
        width: 200.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
