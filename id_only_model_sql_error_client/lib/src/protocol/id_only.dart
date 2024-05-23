/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class IdOnly extends _i1.SerializableEntity {
  IdOnly._({this.id});

  factory IdOnly({int? id}) = _IdOnlyImpl;

  factory IdOnly.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return IdOnly(
        id: serializationManager.deserialize<int?>(jsonSerialization['id']));
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  IdOnly copyWith({int? id});
  @override
  Map<String, dynamic> toJson() {
    return {if (id != null) 'id': id};
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
