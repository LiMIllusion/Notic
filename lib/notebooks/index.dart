import 'package:json_annotation/json_annotation.dart';
import 'notebook.dart';
part 'index.g.dart';

@JsonSerializable()
class Index {
    String n;
    Notebook notebook;
    Index(this.n, this.notebook);
    factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);
    Map<String, dynamic> toJson() => _$IndexToJson(this);
}