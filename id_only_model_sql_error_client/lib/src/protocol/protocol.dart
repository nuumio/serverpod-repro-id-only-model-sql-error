/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'item.dart' as _i2;
import 'item_list.dart' as _i3;
import 'item_list_entry.dart' as _i4;
import 'shipping_crate.dart' as _i5;
import 'warehouse.dart' as _i6;
import 'protocol.dart' as _i7;
export 'item.dart';
export 'item_list.dart';
export 'item_list_entry.dart';
export 'shipping_crate.dart';
export 'warehouse.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Item) {
      return _i2.Item.fromJson(data, this) as T;
    }
    if (t == _i3.ItemList) {
      return _i3.ItemList.fromJson(data, this) as T;
    }
    if (t == _i4.ItemListEntry) {
      return _i4.ItemListEntry.fromJson(data, this) as T;
    }
    if (t == _i5.ShippingCrate) {
      return _i5.ShippingCrate.fromJson(data, this) as T;
    }
    if (t == _i6.WareHouse) {
      return _i6.WareHouse.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Item?>()) {
      return (data != null ? _i2.Item.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.ItemList?>()) {
      return (data != null ? _i3.ItemList.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.ItemListEntry?>()) {
      return (data != null ? _i4.ItemListEntry.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i5.ShippingCrate?>()) {
      return (data != null ? _i5.ShippingCrate.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.WareHouse?>()) {
      return (data != null ? _i6.WareHouse.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i7.ItemListEntry>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i7.ItemListEntry>(e))
              .toList()
          : null) as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Item) {
      return 'Item';
    }
    if (data is _i3.ItemList) {
      return 'ItemList';
    }
    if (data is _i4.ItemListEntry) {
      return 'ItemListEntry';
    }
    if (data is _i5.ShippingCrate) {
      return 'ShippingCrate';
    }
    if (data is _i6.WareHouse) {
      return 'WareHouse';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Item') {
      return deserialize<_i2.Item>(data['data']);
    }
    if (data['className'] == 'ItemList') {
      return deserialize<_i3.ItemList>(data['data']);
    }
    if (data['className'] == 'ItemListEntry') {
      return deserialize<_i4.ItemListEntry>(data['data']);
    }
    if (data['className'] == 'ShippingCrate') {
      return deserialize<_i5.ShippingCrate>(data['data']);
    }
    if (data['className'] == 'WareHouse') {
      return deserialize<_i6.WareHouse>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
