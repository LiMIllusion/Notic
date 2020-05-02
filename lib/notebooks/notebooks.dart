import 'package:flutter/material.dart';
import '../other/sizeConfig.dart';
import '../other/errorPopup.dart';
import '../other/accessStorage.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'notebook.dart';
import 'index.dart';

class NoteBooks extends StatefulWidget {
  @override
  _NoteBooksState createState() => _NoteBooksState();
}

class _NoteBooksState extends State<NoteBooks> {
  @override
  Widget build(BuildContext context) {
    String index = AccessStorage().readFile("indexFile.json");
    print("file content: $index");
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
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  addNotebook(context, index);
                })
          ],
        ),
        body: index == null ? notebooksNotFound() : listOfNotebooks(index),
      ),
    );
  }

  Widget addNotebook(context,String index) {
    final filename = TextEditingController();
    Color _currentColor = Colors.green;
    SizeConfig().init(context);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Aggiungi un nuovo quaderno"),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("Chiudi")),
                FlatButton(onPressed: (){
                  print(_currentColor);
                  Index newIndex = Index(Notebook(filename.text, _currentColor.value));
                  print("${newIndex.toJson()}");
                  index = "${index == null ? '' : '$index,'} ${newIndex.toJson()}";
                  AccessStorage().writeFile("indexFile.json", index);
                  AccessStorage().writeFile("${filename.text}.notic", "aaa");
                  print(index);
                  Navigator.of(context).pop();
                }, child: Text("Avanti"))
              ],
              content: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: filename,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Inserisci il nome del quaderno'),
                        cursorColor: Colors.cyan,
                        onSubmitted: (String enter) => {print(enter)},
                      ),
                    ),
                    Text("Scegli il colore per la copertina\n"),
                    SingleChildScrollView(
                      child: BlockPicker(
                        pickerColor: _currentColor,
                        onColorChanged: (color) {
                          setState(() {
                            _currentColor = color;
                          });
                        },
                      ),
                    ),
                    Text("ToDo notebook background")
                  ],
                ),
                height: SizeConfig.safeBlockScreenHeight * 70,
                width: SizeConfig.safeBlockScreenWidth * 20,
              ));
        });
  }

  Widget notebooksNotFound() {
    SizeConfig().init(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Expanded(child: Container(height: 0, width: 0,)),
          Icon(
            Icons.block,
            size: SizeConfig.safeBlockScreenWidth * 8,
          ),
          SizedBox(height: SizeConfig.safeBlockScreenWidth * 2),
          Text(
            "Sembra non ci siano quaderni.\nAggiungine qualcuno per vederli qui!",
            textAlign: TextAlign.center,
          ),
          //Expanded(child: Container(height: 0, width: 0,))
        ],
      ),
    );
  }

  Widget listOfNotebooks(String index) {
    print(index);
    return null;
  }
}
