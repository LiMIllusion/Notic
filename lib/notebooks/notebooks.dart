import 'package:flutter/material.dart';
import '../other/sizeConfig.dart';
import '../other/errorSnackbar.dart';

class NoteBooks extends StatefulWidget {
  @override
  _NoteBooksState createState() => _NoteBooksState();
}

class _NoteBooksState extends State<NoteBooks> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "notebooks",
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF062f4f),
          title: Text("APPUNTI",
              style: TextStyle(
                  color: Color(0xfff4f8ed), decoration: TextDecoration.none)),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Theme(
              data: Theme.of(context).copyWith(accentColor: Colors.white),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(child: Container(height: 0, width: 0)),
                    Text("TODO: Filter menu for notebooks"),
                    Expanded(child: Container(height: 0, width: 0))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
