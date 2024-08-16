import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

class MutDashboardModel {
  int id;
  String title;
  int count;

  // Constructor
  MutDashboardModel({
    required this.id,
    required this.title,
    required this.count,
  });

  // Copy Constructor in order to Rx able to work
  MutDashboardModel copyWith({
    int? id,
    String? title,
    int? count,
  }) {
    return MutDashboardModel(
      id: id ?? this.id,
      title: title ?? this.title,
      count: count ?? this.count,
    );
  }
}