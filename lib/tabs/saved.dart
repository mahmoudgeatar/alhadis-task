import 'package:alhades/widget/savedCardes.dart';
import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SavedCards(),
          SavedCards(),
          SavedCards(),
        ],
      ),
    );
  }
}
