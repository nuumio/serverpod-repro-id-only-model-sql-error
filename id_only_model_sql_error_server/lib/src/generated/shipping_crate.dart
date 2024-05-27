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

abstract class ShippingCrate extends _i1.TableRow {
  ShippingCrate._({
    int? id,
    required this.itemListId,
    this.itemList,
    required this.weight,
    required this.source,
    required this.destination,
  }) : super(id);

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

  static final t = ShippingCrateTable();

  static const db = ShippingCrateRepository._();

  int itemListId;

  _i2.ItemList? itemList;

  double weight;

  String source;

  String destination;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'itemListId': itemListId,
      'weight': weight,
      'source': source,
      'destination': destination,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'itemListId': itemListId,
      if (itemList != null) 'itemList': itemList?.allToJson(),
      'weight': weight,
      'source': source,
      'destination': destination,
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
      case 'weight':
        weight = value;
        return;
      case 'source':
        source = value;
        return;
      case 'destination':
        destination = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ShippingCrate>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShippingCrateTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShippingCrateInclude? include,
  }) async {
    return session.db.find<ShippingCrate>(
      where: where != null ? where(ShippingCrate.t) : null,
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
  static Future<ShippingCrate?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShippingCrateTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShippingCrateInclude? include,
  }) async {
    return session.db.findSingleRow<ShippingCrate>(
      where: where != null ? where(ShippingCrate.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ShippingCrate?> findById(
    _i1.Session session,
    int id, {
    ShippingCrateInclude? include,
  }) async {
    return session.db.findById<ShippingCrate>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShippingCrateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ShippingCrate>(
      where: where(ShippingCrate.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ShippingCrate row, {
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
    ShippingCrate row, {
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
    ShippingCrate row, {
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
    _i1.WhereExpressionBuilder<ShippingCrateTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ShippingCrate>(
      where: where != null ? where(ShippingCrate.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ShippingCrateInclude include({_i2.ItemListInclude? itemList}) {
    return ShippingCrateInclude._(itemList: itemList);
  }

  static ShippingCrateIncludeList includeList({
    _i1.WhereExpressionBuilder<ShippingCrateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShippingCrateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShippingCrateTable>? orderByList,
    ShippingCrateInclude? include,
  }) {
    return ShippingCrateIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShippingCrate.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ShippingCrate.t),
      include: include,
    );
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

class ShippingCrateTable extends _i1.Table {
  ShippingCrateTable({super.tableRelation})
      : super(tableName: 'shipping_crate') {
    itemListId = _i1.ColumnInt(
      'itemListId',
      this,
    );
    weight = _i1.ColumnDouble(
      'weight',
      this,
    );
    source = _i1.ColumnString(
      'source',
      this,
    );
    destination = _i1.ColumnString(
      'destination',
      this,
    );
  }

  late final _i1.ColumnInt itemListId;

  _i2.ItemListTable? _itemList;

  late final _i1.ColumnDouble weight;

  late final _i1.ColumnString source;

  late final _i1.ColumnString destination;

  _i2.ItemListTable get itemList {
    if (_itemList != null) return _itemList!;
    _itemList = _i1.createRelationTable(
      relationFieldName: 'itemList',
      field: ShippingCrate.t.itemListId,
      foreignField: _i2.ItemList.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ItemListTable(tableRelation: foreignTableRelation),
    );
    return _itemList!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        itemListId,
        weight,
        source,
        destination,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'itemList') {
      return itemList;
    }
    return null;
  }
}

@Deprecated('Use ShippingCrateTable.t instead.')
ShippingCrateTable tShippingCrate = ShippingCrateTable();

class ShippingCrateInclude extends _i1.IncludeObject {
  ShippingCrateInclude._({_i2.ItemListInclude? itemList}) {
    _itemList = itemList;
  }

  _i2.ItemListInclude? _itemList;

  @override
  Map<String, _i1.Include?> get includes => {'itemList': _itemList};

  @override
  _i1.Table get table => ShippingCrate.t;
}

class ShippingCrateIncludeList extends _i1.IncludeList {
  ShippingCrateIncludeList._({
    _i1.WhereExpressionBuilder<ShippingCrateTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShippingCrate.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ShippingCrate.t;
}

class ShippingCrateRepository {
  const ShippingCrateRepository._();

  final attachRow = const ShippingCrateAttachRowRepository._();

  Future<List<ShippingCrate>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShippingCrateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShippingCrateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShippingCrateTable>? orderByList,
    _i1.Transaction? transaction,
    ShippingCrateInclude? include,
  }) async {
    return session.dbNext.find<ShippingCrate>(
      where: where?.call(ShippingCrate.t),
      orderBy: orderBy?.call(ShippingCrate.t),
      orderByList: orderByList?.call(ShippingCrate.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ShippingCrate?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShippingCrateTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShippingCrateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShippingCrateTable>? orderByList,
    _i1.Transaction? transaction,
    ShippingCrateInclude? include,
  }) async {
    return session.dbNext.findFirstRow<ShippingCrate>(
      where: where?.call(ShippingCrate.t),
      orderBy: orderBy?.call(ShippingCrate.t),
      orderByList: orderByList?.call(ShippingCrate.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ShippingCrate?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ShippingCrateInclude? include,
  }) async {
    return session.dbNext.findById<ShippingCrate>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ShippingCrate>> insert(
    _i1.Session session,
    List<ShippingCrate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ShippingCrate>(
      rows,
      transaction: transaction,
    );
  }

  Future<ShippingCrate> insertRow(
    _i1.Session session,
    ShippingCrate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ShippingCrate>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ShippingCrate>> update(
    _i1.Session session,
    List<ShippingCrate> rows, {
    _i1.ColumnSelections<ShippingCrateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ShippingCrate>(
      rows,
      columns: columns?.call(ShippingCrate.t),
      transaction: transaction,
    );
  }

  Future<ShippingCrate> updateRow(
    _i1.Session session,
    ShippingCrate row, {
    _i1.ColumnSelections<ShippingCrateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ShippingCrate>(
      row,
      columns: columns?.call(ShippingCrate.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ShippingCrate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ShippingCrate>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ShippingCrate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ShippingCrate>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShippingCrateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ShippingCrate>(
      where: where(ShippingCrate.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShippingCrateTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ShippingCrate>(
      where: where?.call(ShippingCrate.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ShippingCrateAttachRowRepository {
  const ShippingCrateAttachRowRepository._();

  Future<void> itemList(
    _i1.Session session,
    ShippingCrate shippingCrate,
    _i2.ItemList itemList,
  ) async {
    if (shippingCrate.id == null) {
      throw ArgumentError.notNull('shippingCrate.id');
    }
    if (itemList.id == null) {
      throw ArgumentError.notNull('itemList.id');
    }

    var $shippingCrate = shippingCrate.copyWith(itemListId: itemList.id);
    await session.dbNext.updateRow<ShippingCrate>(
      $shippingCrate,
      columns: [ShippingCrate.t.itemListId],
    );
  }
}
