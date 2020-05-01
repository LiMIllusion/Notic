import 'package:flutter/material.dart';
import 'other/sizeConfig.dart';
import 'other/errorPopup.dart';
import 'notebooks/notebooks.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
/*
  Color scheme:
    Color(0xFF062f4f)
    Color(0xFF813772)
    Color(0xFFb92601)

*/

class _HomeScreenState extends State<HomeScreen>{
  @override 
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: 60 * SizeConfig.safeBlockScreenHeight,
          width: 60 * SizeConfig.safeBlockScreenWidth,
          child: Column(
            children: [
              Row(children: [
                Container(
                  //Personale
                  height: 20 * SizeConfig.safeBlockScreenHeight,
                  width: 60 * SizeConfig.safeBlockScreenWidth,
                  child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Hero(
                        tag: "notebooks",
                        child:RaisedButton(
                      color: Color(0xFF062f4f),
                        elevation: 13,
                        child: Text("APPUNTI", style: TextStyle(color: Color(0xfff4f8ed), fontSize: 8*SizeConfig.safeBlockScreenHeight)),
                        onPressed: (){
                          //toDoError(context);
                          Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => NoteBooks()));
                        },
                      ))),
                )
              ]),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: SizeConfig.safeBlockScreenHeight * 20,
                        width: SizeConfig.safeBlockScreenWidth * 30,
                        child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: RaisedButton(
                              color: Color(0xFF813772),
                              elevation: 13,
                              child: Text("Accedi a una stanza", style: TextStyle(color: Color(0xfff4f8ed), fontSize: 3*SizeConfig.safeBlockScreenHeight)),
                              onPressed: (){
                                toDoError(context);
                                },
                            )),
                      ),
                      Container(
                        height: SizeConfig.safeBlockScreenHeight * 20,
                        width: SizeConfig.safeBlockScreenWidth * 30,
                        child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: RaisedButton(
                              elevation: 13,
                              color: Color(0xFFb92601),
                              child: Text("Impostazioni", style: TextStyle(color: Color(0xfff4f8ed), fontSize: 3*SizeConfig.safeBlockScreenHeight)),
                              onPressed: () {toDoError(context);},
                            )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: SizeConfig.safeBlockScreenHeight * 40,
                        width: SizeConfig.safeBlockScreenWidth * 30,
                        child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: RaisedButton(
                              elevation: 13,
                              color: Color(0xFF813772),
                              child: Text("Crea una stanza", style: TextStyle(color: Color(0xfff4f8ed), fontSize: 3*SizeConfig.safeBlockScreenHeight)),
                              onPressed: (){toDoError(context);},
                            )),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}