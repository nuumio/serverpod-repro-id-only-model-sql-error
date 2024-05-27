/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class ShippingCrate extends _i1.SerializableEntity {
  ShippingCrate._({
    this.id,
    required this.itemListId,
    this.itemList,
    required this.weight,
    required this.source,
    required this.destination,
  });

  factory ShippingCrate({
    int? id,
    required int itemListId,
    _i2.ItemList? itemList,
    required double weight,
    required String source,
    required String destination,
  }) = _ShippingCrateImpl;

  factory ShippingCrate.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ShippingCrate(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemListId: serializationManager
          .deserialize<int>(jsonSerialization['itemListId']),
      itemList: serializationManager
          .deserialize<_i2.ItemList?>(jsonSerialization['itemList']),
      weight:
          serializationManager.deserialize<double>(jsonSerialization['weight']),
      source:
          serializationManager.deserialize<String>(jsonSerialization['source']),
      destination: serializationManager
          .deserialize<String>(jsonSerialization['destination']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int itemListId;

  _i2.ItemList? itemList;

  double weight;

  String source;

  String destination;

  ShippingCrate copyWith({
    int? id,
    int? itemListId,
    _i2.ItemList? itemList,
    double? weight,
    String? source,
    String? destination,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemListId': itemListId,
      if (itemList != null) 'itemList': itemList?.toJson(),
      'weight': weight,
      'source': source,
      'destination': destination,
    };
  }
}

class _Undefined {}

class _ShippingCrateImpl extends ShippingCrate {
  _ShippingCrateImpl({
    int? id,
    required int itemListId,
    _i2.ItemList? itemList,
    required double weight,
    required String source,
    required String destination,
  }) : super._(
          id: id,
          itemListId: itemListId,
          itemList: itemList,
          weight: weight,
          source: source,
          destination: destination,
        );

  @override
  ShippingCrate copyWith({
    Object? id = _Undefined,
    int? itemListId,
    Object? itemList = _Undefined,
    double? weight,
    String? source,
    String? destination,
  }) {
    return ShippingCrate(
      id: id is int? ? id : this.id,
      itemListId: itemListId ?? this.itemListId,
      itemList:
          itemList is _i2.ItemList? ? itemList : this.itemList?.copyWith(),
      weight: weight ?? this.weight,
      source: source ?? this.source,
      destination: destination ?? this.destination,
    );
  }
}
