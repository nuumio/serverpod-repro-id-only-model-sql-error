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

abstract class WareHouse extends _i1.TableRow {
  WareHouse._({
    int? id,
    required this.itemListId,
    this.itemList,
    required this.address,
  }) : super(id);

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

  static final t = WareHouseTable();

  static const db = WareHouseRepository._();

  int itemListId;

  _i2.ItemList? itemList;

  String address;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'itemListId': itemListId,
      'address': address,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'itemListId': itemListId,
      if (itemList != null) 'itemList': itemList?.allToJson(),
      'address': address,
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
      case 'address':
        address = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<WareHouse>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WareHouseTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    WareHouseInclude? include,
  }) async {
    return session.db.find<WareHouse>(
      where: where != null ? where(WareHouse.t) : null,
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
  static Future<WareHouse?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WareHouseTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    WareHouseInclude? include,
  }) async {
    return session.db.findSingleRow<WareHouse>(
      where: where != null ? where(WareHouse.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<WareHouse?> findById(
    _i1.Session session,
    int id, {
    WareHouseInclude? include,
  }) async {
    return session.db.findById<WareHouse>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WareHouseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WareHouse>(
      where: where(WareHouse.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    WareHouse row, {
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
    WareHouse row, {
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
    WareHouse row, {
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
    _i1.WhereExpressionBuilder<WareHouseTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WareHouse>(
      where: where != null ? where(WareHouse.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static WareHouseInclude include({_i2.ItemListInclude? itemList}) {
    return WareHouseInclude._(itemList: itemList);
  }

  static WareHouseIncludeList includeList({
    _i1.WhereExpressionBuilder<WareHouseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WareHouseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WareHouseTable>? orderByList,
    WareHouseInclude? include,
  }) {
    return WareHouseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WareHouse.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(WareHouse.t),
      include: include,
    );
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

class WareHouseTable extends _i1.Table {
  WareHouseTable({super.tableRelation}) : super(tableName: 'warehouse') {
    itemListId = _i1.ColumnInt(
      'itemListId',
      this,
    );
    address = _i1.ColumnString(
      'address',
      this,
    );
  }

  late final _i1.ColumnInt itemListId;

  _i2.ItemListTable? _itemList;

  late final _i1.ColumnString address;

  _i2.ItemListTable get itemList {
    if (_itemList != null) return _itemList!;
    _itemList = _i1.createRelationTable(
      relationFieldName: 'itemList',
      field: WareHouse.t.itemListId,
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
        address,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'itemList') {
      return itemList;
    }
    return null;
  }
}

@Deprecated('Use WareHouseTable.t instead.')
WareHouseTable tWareHouse = WareHouseTable();

class WareHouseInclude extends _i1.IncludeObject {
  WareHouseInclude._({_i2.ItemListInclude? itemList}) {
    _itemList = itemList;
  }

  _i2.ItemListInclude? _itemList;

  @override
  Map<String, _i1.Include?> get includes => {'itemList': _itemList};

  @override
  _i1.Table get table => WareHouse.t;
}

class WareHouseIncludeList extends _i1.IncludeList {
  WareHouseIncludeList._({
    _i1.WhereExpressionBuilder<WareHouseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WareHouse.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => WareHouse.t;
}

class WareHouseRepository {
  const WareHouseRepository._();

  final attachRow = const WareHouseAttachRowRepository._();

  Future<List<WareHouse>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WareHouseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WareHouseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WareHouseTable>? orderByList,
    _i1.Transaction? transaction,
    WareHouseInclude? include,
  }) async {
    return session.dbNext.find<WareHouse>(
      where: where?.call(WareHouse.t),
      orderBy: orderBy?.call(WareHouse.t),
      orderByList: orderByList?.call(WareHouse.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<WareHouse?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WareHouseTable>? where,
    int? offset,
    _i1.OrderByBuilder<WareHouseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WareHouseTable>? orderByList,
    _i1.Transaction? transaction,
    WareHouseInclude? include,
  }) async {
    return session.dbNext.findFirstRow<WareHouse>(
      where: where?.call(WareHouse.t),
      orderBy: orderBy?.call(WareHouse.t),
      orderByList: orderByList?.call(WareHouse.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<WareHouse?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    WareHouseInclude? include,
  }) async {
    return session.dbNext.findById<WareHouse>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<WareHouse>> insert(
    _i1.Session session,
    List<WareHouse> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<WareHouse>(
      rows,
      transaction: transaction,
    );
  }

  Future<WareHouse> insertRow(
    _i1.Session session,
    WareHouse row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<WareHouse>(
      row,
      transaction: transaction,
    );
  }

  Future<List<WareHouse>> update(
    _i1.Session session,
    List<WareHouse> rows, {
    _i1.ColumnSelections<WareHouseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<WareHouse>(
      rows,
      columns: columns?.call(WareHouse.t),
      transaction: transaction,
    );
  }

  Future<WareHouse> updateRow(
    _i1.Session session,
    WareHouse row, {
    _i1.ColumnSelections<WareHouseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<WareHouse>(
      row,
      columns: columns?.call(WareHouse.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<WareHouse> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<WareHouse>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    WareHouse row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<WareHouse>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WareHouseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<WareHouse>(
      where: where(WareHouse.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WareHouseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<WareHouse>(
      where: where?.call(WareHouse.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class WareHouseAttachRowRepository {
  const WareHouseAttachRowRepository._();

  Future<void> itemList(
    _i1.Session session,
    WareHouse wareHouse,
    _i2.ItemList itemList,
  ) async {
    if (wareHouse.id == null) {
      throw ArgumentError.notNull('wareHouse.id');
    }
    if (itemList.id == null) {
      throw ArgumentError.notNull('itemList.id');
    }

    var $wareHouse = wareHouse.copyWith(itemListId: itemList.id);
    await session.dbNext.updateRow<WareHouse>(
      $wareHouse,
      columns: [WareHouse.t.itemListId],
    );
  }
}
