/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ItemListEntry extends _i1.SerializableEntity {
  ItemListEntry._({
    this.id,
    required this.itemListId,
    required this.itemId,
    required this.amount,
  });

  factory ItemListEntry({
    int? id,
    required int itemListId,
    required int itemId,
    required int amount,
  }) = _ItemListEntryImpl;

  factory ItemListEntry.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ItemListEntry(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemListId: serializationManager
          .deserialize<int>(jsonSerialization['itemListId']),
      itemId:
          serializationManager.deserialize<int>(jsonSerialization['itemId']),
      amount:
          serializationManager.deserialize<int>(jsonSerialization['amount']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int itemListId;

  int itemId;

  int amount;

  ItemListEntry copyWith({
    int? id,
    int? itemListId,
    int? itemId,
    int? amount,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemListId': itemListId,
      'itemId': itemId,
      'amount': amount,
    };
  }
}

class _Undefined {}

class _ItemListEntryImpl extends ItemListEntry {
  _ItemListEntryImpl({
    int? id,
    required int itemListId,
    required int itemId,
    required int amount,
  }) : super._(
          id: id,
          itemListId: itemListId,
          itemId: itemId,
          amount: amount,
        );

  @override
  ItemListEntry copyWith({
    Object? id = _Undefined,
    int? itemListId,
    int? itemId,
    int? amount,
  }) {
    return ItemListEntry(
      id: id is int? ? id : this.id,
      itemListId: itemListId ?? this.itemListId,
      itemId: itemId ?? this.itemId,
      amount: amount ?? this.amount,
    );
  }
}
