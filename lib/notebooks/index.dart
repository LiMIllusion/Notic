import 'package:json_annotation/json_annotation.dart';
import 'notebook.dart';
part 'index.g.dart';

@JsonSerializable(explicitToJson: true)
class Index {
  @JsonKey(required: true)
  @JsonKey(defaultValue: null)
    Notebook notebook;
    Index(this.notebook);
    factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);
    Map<String, dynamic> toJson() => _$IndexToJson(this);
}