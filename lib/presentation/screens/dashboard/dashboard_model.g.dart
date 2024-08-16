// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DashboardModel> _$dashboardModelSerializer =
    new _$DashboardModelSerializer();

class _$DashboardModelSerializer
    implements StructuredSerializer<DashboardModel> {
  @override
  final Iterable<Type> types = const [DashboardModel, _$DashboardModel];
  @override
  final String wireName = 'DashboardModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, DashboardModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  DashboardModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DashboardModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DashboardModel extends DashboardModel {
  @override
  final int id;
  @override
  final String title;
  @override
  final int count;

  factory _$DashboardModel([void Function(DashboardModelBuilder)? updates]) =>
      (new DashboardModelBuilder()..update(updates))._build();

  _$DashboardModel._(
      {required this.id, required this.title, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'DashboardModel', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'DashboardModel', 'title');
    BuiltValueNullFieldError.checkNotNull(count, r'DashboardModel', 'count');
  }

  @override
  DashboardModel rebuild(void Function(DashboardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardModelBuilder toBuilder() =>
      new DashboardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardModel &&
        id == other.id &&
        title == other.title &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardModel')
          ..add('id', id)
          ..add('title', title)
          ..add('count', count))
        .toString();
  }
}

class DashboardModelBuilder
    implements Builder<DashboardModel, DashboardModelBuilder> {
  _$DashboardModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  DashboardModelBuilder();

  DashboardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DashboardModel;
  }

  @override
  void update(void Function(DashboardModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardModel build() => _build();

  _$DashboardModel _build() {
    final _$result = _$v ??
        new _$DashboardModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DashboardModel', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'DashboardModel', 'title'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'DashboardModel', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
