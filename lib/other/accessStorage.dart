import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class AccessStorage{
  String filename = "";

  String readFile(String filename){
    this.filename = filename; 
    String returnValue;
    readContent().then((value){
      returnValue = value;
    }); 
    return returnValue;
  }

  Future<File> writeFile(String filename, String contents){
    this.filename = filename;
    return writeContent(contents);
  }

  Future<String> get _localPath async{
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async{
    final path = await _localPath;
    return File("$path/${this.filename}");
  }

  Future<String> readContent() async{
    try{
      final file = await _localFile;
      String contents = await file.readAsString();
      return contents;
    }catch(e){
      return "";
    }
  }

  Future<File> writeContent(String newContent)async{
    final file = await _localFile;
    return file.writeAsString(newContent);
  }

}