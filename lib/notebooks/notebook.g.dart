// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notebook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notebook _$NotebookFromJson(Map<String, dynamic> json) {
  return Notebook(
    json['filename'] as String,
    json['cover'] as String,
  );
}

Map<String, dynamic> _$NotebookToJson(Notebook instance) => <String, dynamic>{
      'filename': instance.filename,
      'cover': instance.cover,
    };
