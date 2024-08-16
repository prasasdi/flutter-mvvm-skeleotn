// base_model.dart
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_model.g.dart';

abstract class ModelBase<T> implements Built<ModelBase<T>, ModelBaseBuilder<T>> {
  // Define common properties
  String? get id;

  // Constructor
  ModelBase._();
  factory ModelBase([void Function(ModelBaseBuilder<T>) updates]) = _$ModelBase<T>;

  // Serializer for the model
  static Serializer<ModelBase> get serializer => _$modelBaseSerializer;
}

// Define the builder class for ModelBase
abstract class ModelBaseBuilder<T> implements Builder<ModelBase<T>, ModelBaseBuilder<T>> {
  // Define properties here
  String? id;

  // Constructor
  ModelBaseBuilder._();
  factory ModelBaseBuilder() = _$ModelBaseBuilder<T>;
}
