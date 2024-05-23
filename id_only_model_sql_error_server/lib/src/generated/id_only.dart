/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class IdOnly extends _i1.TableRow {
  IdOnly._({int? id}) : super(id);

  factory IdOnly({int? id}) = _IdOnlyImpl;

  factory IdOnly.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return IdOnly(
        id: serializationManager.deserialize<int?>(jsonSerialization['id']));
  }

  static final t = IdOnlyTable();

  static const db = IdOnlyRepository._();

  @override
  _i1.Table get table => t;

  IdOnly copyWith({int? id});
  @override
  Map<String, dynamic> toJson() {
    return {if (id != null) 'id': id};
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {'id': id};
  }

  @override
  Map<String, dynamic> allToJson() {
    return {if (id != null) 'id': id};
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
  static Future<List<IdOnly>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<IdOnlyTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<IdOnly>(
      where: where != null ? where(IdOnly.t) : null,
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
  static Future<IdOnly?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<IdOnlyTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<IdOnly>(
      where: where != null ? where(IdOnly.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<IdOnly?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<IdOnly>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<IdOnlyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<IdOnly>(
      where: where(IdOnly.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    IdOnly row, {
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
    IdOnly row, {
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
    IdOnly row, {
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
    _i1.WhereExpressionBuilder<IdOnlyTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<IdOnly>(
      where: where != null ? where(IdOnly.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static IdOnlyInclude include() {
    return IdOnlyInclude._();
  }

  static IdOnlyIncludeList includeList({
    _i1.WhereExpressionBuilder<IdOnlyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<IdOnlyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<IdOnlyTable>? orderByList,
    IdOnlyInclude? include,
  }) {
    return IdOnlyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(IdOnly.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(IdOnly.t),
      include: include,
    );
  }
}

class _Undefined {}

class _IdOnlyImpl extends IdOnly {
  _IdOnlyImpl({int? id}) : super._(id: id);

  @override
  IdOnly copyWith({Object? id = _Undefined}) {
    return IdOnly(id: id is int? ? id : this.id);
  }
}

class IdOnlyTable extends _i1.Table {
  IdOnlyTable({super.tableRelation}) : super(tableName: 'id_only') {}

  @override
  List<_i1.Column> get columns => [id];
}

@Deprecated('Use IdOnlyTable.t instead.')
IdOnlyTable tIdOnly = IdOnlyTable();

class IdOnlyInclude extends _i1.IncludeObject {
  IdOnlyInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => IdOnly.t;
}

class IdOnlyIncludeList extends _i1.IncludeList {
  IdOnlyIncludeList._({
    _i1.WhereExpressionBuilder<IdOnlyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(IdOnly.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => IdOnly.t;
}

class IdOnlyRepository {
  const IdOnlyRepository._();

  Future<List<IdOnly>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<IdOnlyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<IdOnlyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<IdOnlyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<IdOnly>(
      where: where?.call(IdOnly.t),
      orderBy: orderBy?.call(IdOnly.t),
      orderByList: orderByList?.call(IdOnly.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<IdOnly?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<IdOnlyTable>? where,
    int? offset,
    _i1.OrderByBuilder<IdOnlyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<IdOnlyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<IdOnly>(
      where: where?.call(IdOnly.t),
      orderBy: orderBy?.call(IdOnly.t),
      orderByList: orderByList?.call(IdOnly.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<IdOnly?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<IdOnly>(
      id,
      transaction: transaction,
    );
  }

  Future<List<IdOnly>> insert(
    _i1.Session session,
    List<IdOnly> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<IdOnly>(
      rows,
      transaction: transaction,
    );
  }

  Future<IdOnly> insertRow(
    _i1.Session session,
    IdOnly row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<IdOnly>(
      row,
      transaction: transaction,
    );
  }

  Future<List<IdOnly>> update(
    _i1.Session session,
    List<IdOnly> rows, {
    _i1.ColumnSelections<IdOnlyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<IdOnly>(
      rows,
      columns: columns?.call(IdOnly.t),
      transaction: transaction,
    );
  }

  Future<IdOnly> updateRow(
    _i1.Session session,
    IdOnly row, {
    _i1.ColumnSelections<IdOnlyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<IdOnly>(
      row,
      columns: columns?.call(IdOnly.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<IdOnly> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<IdOnly>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    IdOnly row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<IdOnly>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<IdOnlyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<IdOnly>(
      where: where(IdOnly.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<IdOnlyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<IdOnly>(
      where: where?.call(IdOnly.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
