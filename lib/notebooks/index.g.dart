// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Index _$IndexFromJson(Map<String, dynamic> json) {
  return Index(
    json['n'] as String,
    json['notebook'] == null
        ? null
        : Notebook.fromJson(json['notebook'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IndexToJson(Index instance) => <String, dynamic>{
      'n': instance.n,
      'notebook': instance.notebook,
    };
