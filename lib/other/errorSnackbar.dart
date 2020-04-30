import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void toDoError(context){
  showDialog(context: context,
  builder: (BuildContext context){
    return AlertDialog(
      title: Text("This function doesn't exist yet"),
      content: Text("I'm sorry but this feature doesn't seem to exist yet. If you want you can help us develop it on github!"),
      actions: [
        FlatButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("Close")),
        FlatButton(onPressed: ()async{
          String url = "https://github.com/LiMIllusion/Notic";
              if(await canLaunch(url)) {
      launch(url);
    }
        }, child: Text("Open github"))
      ],
      backgroundColor: Color(0xFF062f4f),
    );
  });
}