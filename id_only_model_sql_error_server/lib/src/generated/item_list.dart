/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class ItemList extends _i1.TableRow {
  ItemList._({
    int? id,
    this.items,
  }) : super(id);

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

  static final t = ItemListTable();

  static const db = ItemListRepository._();

  List<_i2.ItemListEntry>? items;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {'id': id};
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (items != null)
        'items': items?.toJson(valueToJson: (v) => v.allToJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ItemList>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ItemListInclude? include,
  }) async {
    return session.db.find<ItemList>(
      where: where != null ? where(ItemList.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<ItemList?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ItemListInclude? include,
  }) async {
    return session.db.findSingleRow<ItemList>(
      where: where != null ? where(ItemList.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ItemList?> findById(
    _i1.Session session,
    int id, {
    ItemListInclude? include,
  }) async {
    return session.db.findById<ItemList>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemListTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ItemList>(
      where: where(ItemList.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ItemList row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    ItemList row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    ItemList row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ItemList>(
      where: where != null ? where(ItemList.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ItemListInclude include({_i2.ItemListEntryIncludeList? items}) {
    return ItemListInclude._(items: items);
  }

  static ItemListIncludeList includeList({
    _i1.WhereExpressionBuilder<ItemListTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemListTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemListTable>? orderByList,
    ItemListInclude? include,
  }) {
    return ItemListIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ItemList.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ItemList.t),
      include: include,
    );
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

class ItemListTable extends _i1.Table {
  ItemListTable({super.tableRelation}) : super(tableName: 'item_list') {}

  _i2.ItemListEntryTable? ___items;

  _i1.ManyRelation<_i2.ItemListEntryTable>? _items;

  _i2.ItemListEntryTable get __items {
    if (___items != null) return ___items!;
    ___items = _i1.createRelationTable(
      relationFieldName: '__items',
      field: ItemList.t.id,
      foreignField: _i2.ItemListEntry.t.itemListId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ItemListEntryTable(tableRelation: foreignTableRelation),
    );
    return ___items!;
  }

  _i1.ManyRelation<_i2.ItemListEntryTable> get items {
    if (_items != null) return _items!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'items',
      field: ItemList.t.id,
      foreignField: _i2.ItemListEntry.t.itemListId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ItemListEntryTable(tableRelation: foreignTableRelation),
    );
    _items = _i1.ManyRelation<_i2.ItemListEntryTable>(
      tableWithRelations: relationTable,
      table: _i2.ItemListEntryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _items!;
  }

  @override
  List<_i1.Column> get columns => [id];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'items') {
      return __items;
    }
    return null;
  }
}

@Deprecated('Use ItemListTable.t instead.')
ItemListTable tItemList = ItemListTable();

class ItemListInclude extends _i1.IncludeObject {
  ItemListInclude._({_i2.ItemListEntryIncludeList? items}) {
    _items = items;
  }

  _i2.ItemListEntryIncludeList? _items;

  @override
  Map<String, _i1.Include?> get includes => {'items': _items};

  @override
  _i1.Table get table => ItemList.t;
}

class ItemListIncludeList extends _i1.IncludeList {
  ItemListIncludeList._({
    _i1.WhereExpressionBuilder<ItemListTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ItemList.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ItemList.t;
}

class ItemListRepository {
  const ItemListRepository._();

  final attach = const ItemListAttachRepository._();

  final attachRow = const ItemListAttachRowRepository._();

  Future<List<ItemList>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemListTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemListTable>? orderByList,
    _i1.Transaction? transaction,
    ItemListInclude? include,
  }) async {
    return session.dbNext.find<ItemList>(
      where: where?.call(ItemList.t),
      orderBy: orderBy?.call(ItemList.t),
      orderByList: orderByList?.call(ItemList.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ItemList?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItemListTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemListTable>? orderByList,
    _i1.Transaction? transaction,
    ItemListInclude? include,
  }) async {
    return session.dbNext.findFirstRow<ItemList>(
      where: where?.call(ItemList.t),
      orderBy: orderBy?.call(ItemList.t),
      orderByList: orderByList?.call(ItemList.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ItemList?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ItemListInclude? include,
  }) async {
    return session.dbNext.findById<ItemList>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ItemList>> insert(
    _i1.Session session,
    List<ItemList> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ItemList>(
      rows,
      transaction: transaction,
    );
  }

  Future<ItemList> insertRow(
    _i1.Session session,
    ItemList row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ItemList>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ItemList>> update(
    _i1.Session session,
    List<ItemList> rows, {
    _i1.ColumnSelections<ItemListTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ItemList>(
      rows,
      columns: columns?.call(ItemList.t),
      transaction: transaction,
    );
  }

  Future<ItemList> updateRow(
    _i1.Session session,
    ItemList row, {
    _i1.ColumnSelections<ItemListTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ItemList>(
      row,
      columns: columns?.call(ItemList.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ItemList> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ItemList>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ItemList row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ItemList>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemListTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ItemList>(
      where: where(ItemList.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ItemList>(
      where: where?.call(ItemList.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ItemListAttachRepository {
  const ItemListAttachRepository._();

  Future<void> items(
    _i1.Session session,
    ItemList itemList,
    List<_i2.ItemListEntry> itemListEntry,
  ) async {
    if (itemListEntry.any((e) => e.id == null)) {
      throw ArgumentError.notNull('itemListEntry.id');
    }
    if (itemList.id == null) {
      throw ArgumentError.notNull('itemList.id');
    }

    var $itemListEntry =
        itemListEntry.map((e) => e.copyWith(itemListId: itemList.id)).toList();
    await session.dbNext.update<_i2.ItemListEntry>(
      $itemListEntry,
      columns: [_i2.ItemListEntry.t.itemListId],
    );
  }
}

class ItemListAttachRowRepository {
  const ItemListAttachRowRepository._();

  Future<void> items(
    _i1.Session session,
    ItemList itemList,
    _i2.ItemListEntry itemListEntry,
  ) async {
    if (itemListEntry.id == null) {
      throw ArgumentError.notNull('itemListEntry.id');
    }
    if (itemList.id == null) {
      throw ArgumentError.notNull('itemList.id');
    }

    var $itemListEntry = itemListEntry.copyWith(itemListId: itemList.id);
    await session.dbNext.updateRow<_i2.ItemListEntry>(
      $itemListEntry,
      columns: [_i2.ItemListEntry.t.itemListId],
    );
  }
}
