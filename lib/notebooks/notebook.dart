import 'package:json_annotation/json_annotation.dart';
part 'notebook.g.dart';

@JsonSerializable()
class Notebook{
  String filename;
  String cover;
  Notebook(this.filename, this.cover);
  factory Notebook.fromJson(Map<String, dynamic> json) => _$NotebookFromJson(json);
  Map<String, dynamic> toJson() => _$NotebookToJson(this);
}