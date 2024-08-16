// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModelBase<Object?>> _$modelBaseSerializer =
    new _$ModelBaseSerializer();

class _$ModelBaseSerializer
    implements StructuredSerializer<ModelBase<Object?>> {
  @override
  final Iterable<Type> types = const [ModelBase, _$ModelBase];
  @override
  final String wireName = 'ModelBase';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ModelBase<Object?> object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ModelBase<Object?> deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModelBaseBuilder<Object?>();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ModelBase<T> extends ModelBase<T> {
  @override
  final String? id;

  factory _$ModelBase([void Function(ModelBaseBuilder<T>)? updates]) =>
      (new ModelBaseBuilder<T>()..update(updates)).build() as _$ModelBase<T>;

  _$ModelBase._({this.id}) : super._() {
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError(r'ModelBase', 'T');
    }
  }

  @override
  ModelBase<T> rebuild(void Function(ModelBaseBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$ModelBaseBuilder<T> toBuilder() =>
      new _$ModelBaseBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelBase && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelBase')..add('id', id))
        .toString();
  }
}

class _$ModelBaseBuilder<T> extends ModelBaseBuilder<T> {
  _$ModelBase<T>? _$v;

  @override
  String? get id {
    _$this;
    return super.id;
  }

  @override
  set id(String? id) {
    _$this;
    super.id = id;
  }

  _$ModelBaseBuilder() : super._();

  ModelBaseBuilder<T> get _$this {
    final $v = _$v;
    if ($v != null) {
      super.id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelBase<T> other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelBase<T>;
  }

  @override
  void update(void Function(ModelBaseBuilder<T>)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelBase<T> build() => _build();

  _$ModelBase<T> _build() {
    final _$result = _$v ?? new _$ModelBase<T>._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
