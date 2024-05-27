/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Item extends _i1.TableRow {
  Item._({
    int? id,
    required this.name,
  }) : super(id);

  factory Item({
    int? id,
    required String name,
  }) = _ItemImpl;

  factory Item.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Item(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
    );
  }

  static final t = ItemTable();

  static const db = ItemRepository._();

  String name;

  @override
  _i1.Table get table => t;

  Item copyWith({
    int? id,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
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
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Item>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Item>(
      where: where != null ? where(Item.t) : null,
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
  static Future<Item?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Item>(
      where: where != null ? where(Item.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Item?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Item>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Item>(
      where: where(Item.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Item row, {
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
    Item row, {
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
    Item row, {
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
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Item>(
      where: where != null ? where(Item.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ItemInclude include() {
    return ItemInclude._();
  }

  static ItemIncludeList includeList({
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemTable>? orderByList,
    ItemInclude? include,
  }) {
    return ItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Item.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Item.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ItemImpl extends Item {
  _ItemImpl({
    int? id,
    required String name,
  }) : super._(
          id: id,
          name: name,
        );

  @override
  Item copyWith({
    Object? id = _Undefined,
    String? name,
  }) {
    return Item(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
    );
  }
}

class ItemTable extends _i1.Table {
  ItemTable({super.tableRelation}) : super(tableName: 'item') {
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  late final _i1.ColumnString name;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
      ];
}

@Deprecated('Use ItemTable.t instead.')
ItemTable tItem = ItemTable();

class ItemInclude extends _i1.IncludeObject {
  ItemInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Item.t;
}

class ItemIncludeList extends _i1.IncludeList {
  ItemIncludeList._({
    _i1.WhereExpressionBuilder<ItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Item.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Item.t;
}

class ItemRepository {
  const ItemRepository._();

  Future<List<Item>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Item>(
      where: where?.call(Item.t),
      orderBy: orderBy?.call(Item.t),
      orderByList: orderByList?.call(Item.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Item?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Item>(
      where: where?.call(Item.t),
      orderBy: orderBy?.call(Item.t),
      orderByList: orderByList?.call(Item.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Item?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Item>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Item>> insert(
    _i1.Session session,
    List<Item> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Item>(
      rows,
      transaction: transaction,
    );
  }

  Future<Item> insertRow(
    _i1.Session session,
    Item row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Item>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Item>> update(
    _i1.Session session,
    List<Item> rows, {
    _i1.ColumnSelections<ItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Item>(
      rows,
      columns: columns?.call(Item.t),
      transaction: transaction,
    );
  }

  Future<Item> updateRow(
    _i1.Session session,
    Item row, {
    _i1.ColumnSelections<ItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Item>(
      row,
      columns: columns?.call(Item.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Item> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Item>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Item row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Item>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Item>(
      where: where(Item.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Item>(
      where: where?.call(Item.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
