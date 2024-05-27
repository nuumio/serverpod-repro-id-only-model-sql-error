/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'item.dart' as _i3;
import 'item_list.dart' as _i4;
import 'item_list_entry.dart' as _i5;
import 'shipping_crate.dart' as _i6;
import 'warehouse.dart' as _i7;
import 'protocol.dart' as _i8;
export 'item.dart';
export 'item_list.dart';
export 'item_list_entry.dart';
export 'shipping_crate.dart';
export 'warehouse.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'item',
      dartName: 'Item',
      schema: 'public',
      module: 'id_only_model_sql_error',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'item_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'item_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'item_list',
      dartName: 'ItemList',
      schema: 'public',
      module: 'id_only_model_sql_error',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'item_list_id_seq\'::regclass)',
        )
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'item_list_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'item_list_entry',
      dartName: 'ItemListEntry',
      schema: 'public',
      module: 'id_only_model_sql_error',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'item_list_entry_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'itemListId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'itemId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'amount',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'item_list_entry_fk_0',
          columns: ['itemListId'],
          referenceTable: 'item_list',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_list_entry_fk_1',
          columns: ['itemId'],
          referenceTable: 'item',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'item_list_entry_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'shipping_crate',
      dartName: 'ShippingCrate',
      schema: 'public',
      module: 'id_only_model_sql_error',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'shipping_crate_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'itemListId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'weight',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'source',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'destination',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'shipping_crate_fk_0',
          columns: ['itemListId'],
          referenceTable: 'item_list',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'shipping_crate_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'warehouse',
      dartName: 'WareHouse',
      schema: 'public',
      module: 'id_only_model_sql_error',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'warehouse_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'itemListId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'address',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'warehouse_fk_0',
          columns: ['itemListId'],
          referenceTable: 'item_list',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'warehouse_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.Item) {
      return _i3.Item.fromJson(data, this) as T;
    }
    if (t == _i4.ItemList) {
      return _i4.ItemList.fromJson(data, this) as T;
    }
    if (t == _i5.ItemListEntry) {
      return _i5.ItemListEntry.fromJson(data, this) as T;
    }
    if (t == _i6.ShippingCrate) {
      return _i6.ShippingCrate.fromJson(data, this) as T;
    }
    if (t == _i7.WareHouse) {
      return _i7.WareHouse.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.Item?>()) {
      return (data != null ? _i3.Item.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.ItemList?>()) {
      return (data != null ? _i4.ItemList.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.ItemListEntry?>()) {
      return (data != null ? _i5.ItemListEntry.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.ShippingCrate?>()) {
      return (data != null ? _i6.ShippingCrate.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i7.WareHouse?>()) {
      return (data != null ? _i7.WareHouse.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i8.ItemListEntry>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i8.ItemListEntry>(e))
              .toList()
          : null) as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.Item) {
      return 'Item';
    }
    if (data is _i4.ItemList) {
      return 'ItemList';
    }
    if (data is _i5.ItemListEntry) {
      return 'ItemListEntry';
    }
    if (data is _i6.ShippingCrate) {
      return 'ShippingCrate';
    }
    if (data is _i7.WareHouse) {
      return 'WareHouse';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Item') {
      return deserialize<_i3.Item>(data['data']);
    }
    if (data['className'] == 'ItemList') {
      return deserialize<_i4.ItemList>(data['data']);
    }
    if (data['className'] == 'ItemListEntry') {
      return deserialize<_i5.ItemListEntry>(data['data']);
    }
    if (data['className'] == 'ShippingCrate') {
      return deserialize<_i6.ShippingCrate>(data['data']);
    }
    if (data['className'] == 'WareHouse') {
      return deserialize<_i7.WareHouse>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.Item:
        return _i3.Item.t;
      case _i4.ItemList:
        return _i4.ItemList.t;
      case _i5.ItemListEntry:
        return _i5.ItemListEntry.t;
      case _i6.ShippingCrate:
        return _i6.ShippingCrate.t;
      case _i7.WareHouse:
        return _i7.WareHouse.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'id_only_model_sql_error';
}
