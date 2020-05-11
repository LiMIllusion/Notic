// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Index _$IndexFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['notebook']);
  return Index(
    json['notebook'] == null
        ? null
        : Notebook.fromJson(json['notebook'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IndexToJson(Index instance) => <String, dynamic>{
      'notebook': instance.notebook?.toJson(),
    };
