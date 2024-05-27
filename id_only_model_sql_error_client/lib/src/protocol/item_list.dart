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

abstract class ItemList extends _i1.SerializableEntity {
  ItemList._({
    this.id,
    this.items,
  });

  factory ItemList({
    int? id,
    List<_i2.ItemListEntry>? items,
  }) = _ItemListImpl;

  factory ItemList.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ItemList(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      items: serializationManager
          .deserialize<List<_i2.ItemListEntry>?>(jsonSerialization['items']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  List<_i2.ItemListEntry>? items;

  ItemList copyWith({
    int? id,
    List<_i2.ItemListEntry>? items,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (items != null) 'items': items?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _ItemListImpl extends ItemList {
  _ItemListImpl({
    int? id,
    List<_i2.ItemListEntry>? items,
  }) : super._(
          id: id,
          items: items,
        );

  @override
  ItemList copyWith({
    Object? id = _Undefined,
    Object? items = _Undefined,
  }) {
    return ItemList(
      id: id is int? ? id : this.id,
      items: items is List<_i2.ItemListEntry>? ? items : this.items?.clone(),
    );
  }
}
