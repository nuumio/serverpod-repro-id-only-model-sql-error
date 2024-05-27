/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ItemListEntry extends _i1.TableRow {
  ItemListEntry._({
    int? id,
    required this.itemListId,
    required this.itemId,
    required this.amount,
  }) : super(id);

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

  static final t = ItemListEntryTable();

  static const db = ItemListEntryRepository._();

  int itemListId;

  int itemId;

  int amount;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'itemListId': itemListId,
      'itemId': itemId,
      'amount': amount,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'itemListId': itemListId,
      'itemId': itemId,
      'amount': amount,
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
      case 'itemListId':
        itemListId = value;
        return;
      case 'itemId':
        itemId = value;
        return;
      case 'amount':
        amount = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ItemListEntry>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListEntryTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ItemListEntry>(
      where: where != null ? where(ItemListEntry.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<ItemListEntry?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListEntryTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ItemListEntry>(
      where: where != null ? where(ItemListEntry.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ItemListEntry?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ItemListEntry>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemListEntryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ItemListEntry>(
      where: where(ItemListEntry.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ItemListEntry row, {
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
    ItemListEntry row, {
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
    ItemListEntry row, {
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
    _i1.WhereExpressionBuilder<ItemListEntryTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ItemListEntry>(
      where: where != null ? where(ItemListEntry.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ItemListEntryInclude include() {
    return ItemListEntryInclude._();
  }

  static ItemListEntryIncludeList includeList({
    _i1.WhereExpressionBuilder<ItemListEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemListEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemListEntryTable>? orderByList,
    ItemListEntryInclude? include,
  }) {
    return ItemListEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ItemListEntry.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ItemListEntry.t),
      include: include,
    );
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

class ItemListEntryTable extends _i1.Table {
  ItemListEntryTable({super.tableRelation})
      : super(tableName: 'item_list_entry') {
    itemListId = _i1.ColumnInt(
      'itemListId',
      this,
    );
    itemId = _i1.ColumnInt(
      'itemId',
      this,
    );
    amount = _i1.ColumnInt(
      'amount',
      this,
    );
  }

  late final _i1.ColumnInt itemListId;

  late final _i1.ColumnInt itemId;

  late final _i1.ColumnInt amount;

  @override
  List<_i1.Column> get columns => [
        id,
        itemListId,
        itemId,
        amount,
      ];
}

@Deprecated('Use ItemListEntryTable.t instead.')
ItemListEntryTable tItemListEntry = ItemListEntryTable();

class ItemListEntryInclude extends _i1.IncludeObject {
  ItemListEntryInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ItemListEntry.t;
}

class ItemListEntryIncludeList extends _i1.IncludeList {
  ItemListEntryIncludeList._({
    _i1.WhereExpressionBuilder<ItemListEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ItemListEntry.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ItemListEntry.t;
}

class ItemListEntryRepository {
  const ItemListEntryRepository._();

  Future<List<ItemListEntry>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemListEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemListEntryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ItemListEntry>(
      where: where?.call(ItemListEntry.t),
      orderBy: orderBy?.call(ItemListEntry.t),
      orderByList: orderByList?.call(ItemListEntry.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ItemListEntry?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListEntryTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItemListEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemListEntryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ItemListEntry>(
      where: where?.call(ItemListEntry.t),
      orderBy: orderBy?.call(ItemListEntry.t),
      orderByList: orderByList?.call(ItemListEntry.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ItemListEntry?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ItemListEntry>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ItemListEntry>> insert(
    _i1.Session session,
    List<ItemListEntry> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ItemListEntry>(
      rows,
      transaction: transaction,
    );
  }

  Future<ItemListEntry> insertRow(
    _i1.Session session,
    ItemListEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ItemListEntry>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ItemListEntry>> update(
    _i1.Session session,
    List<ItemListEntry> rows, {
    _i1.ColumnSelections<ItemListEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ItemListEntry>(
      rows,
      columns: columns?.call(ItemListEntry.t),
      transaction: transaction,
    );
  }

  Future<ItemListEntry> updateRow(
    _i1.Session session,
    ItemListEntry row, {
    _i1.ColumnSelections<ItemListEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ItemListEntry>(
      row,
      columns: columns?.call(ItemListEntry.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ItemListEntry> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ItemListEntry>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ItemListEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ItemListEntry>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemListEntryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ItemListEntry>(
      where: where(ItemListEntry.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemListEntryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ItemListEntry>(
      where: where?.call(ItemListEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
