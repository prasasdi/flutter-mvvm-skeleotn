import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_model.g.dart';

abstract class DashboardModel implements Built<DashboardModel, DashboardModelBuilder>{
  @BuiltValueField(wireName: 'id')
  int get id; // id as a getter

  @BuiltValueField(wireName: 'title')
  String get title; // title as a getter

  @BuiltValueField(wireName: 'count')
  int get count; // count as a getter

  DashboardModel._();
  factory DashboardModel([void Function(DashboardModelBuilder) updates]) = _$DashboardModel;

  static Serializer<DashboardModel> get serializer => _$dashboardModelSerializer;
}

