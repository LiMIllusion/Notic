import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class AccessStorage{
  String filename = "";

  Future<String> readFile(String filename){
    this.filename = filename; 
    return readContent();
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
      return file.readAsString();
    }catch(e){
      return "";
    }
  }

  Future<File> writeContent(String newContent)async{
    final file = await _localFile;
    return file.writeAsString(newContent);
  }

}