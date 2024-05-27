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

abstract class WareHouse extends _i1.SerializableEntity {
  WareHouse._({
    this.id,
    required this.itemListId,
    this.itemList,
    required this.address,
  });

  factory WareHouse({
    int? id,
    required int itemListId,
    _i2.ItemList? itemList,
    required String address,
  }) = _WareHouseImpl;

  factory WareHouse.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WareHouse(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemListId: serializationManager
          .deserialize<int>(jsonSerialization['itemListId']),
      itemList: serializationManager
          .deserialize<_i2.ItemList?>(jsonSerialization['itemList']),
      address: serializationManager
          .deserialize<String>(jsonSerialization['address']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int itemListId;

  _i2.ItemList? itemList;

  String address;

  WareHouse copyWith({
    int? id,
    int? itemListId,
    _i2.ItemList? itemList,
    String? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemListId': itemListId,
      if (itemList != null) 'itemList': itemList?.toJson(),
      'address': address,
    };
  }
}

class _Undefined {}

class _WareHouseImpl extends WareHouse {
  _WareHouseImpl({
    int? id,
    required int itemListId,
    _i2.ItemList? itemList,
    required String address,
  }) : super._(
          id: id,
          itemListId: itemListId,
          itemList: itemList,
          address: address,
        );

  @override
  WareHouse copyWith({
    Object? id = _Undefined,
    int? itemListId,
    Object? itemList = _Undefined,
    String? address,
  }) {
    return WareHouse(
      id: id is int? ? id : this.id,
      itemListId: itemListId ?? this.itemListId,
      itemList:
          itemList is _i2.ItemList? ? itemList : this.itemList?.copyWith(),
      address: address ?? this.address,
    );
  }
}
