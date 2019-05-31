// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLong _$LatLongFromJson(Map<String, dynamic> json) {
  return LatLong(
      lat: (json['lat'] as num)?.toDouble(),
      lng: (json['lng'] as num)?.toDouble());
}

Map<String, dynamic> _$LatLongToJson(LatLong instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};

Region _$RegionFromJson(Map<String, dynamic> json) {
  return Region(
      coords: json['coords'] == null
          ? null
          : LatLong.fromJson(json['coords'] as Map<String, dynamic>),
      id: json['id'] as String,
      name: json['name'] as String,
      zoom: (json['zoom'] as num)?.toDouble());
}

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'coords': instance.coords,
      'id': instance.id,
      'name': instance.name,
      'zoom': instance.zoom
    };

Office _$OfficeFromJson(Map<String, dynamic> json) {
  return Office(
      address: json['address'] as String,
      id: json['id'] as String,
      image: json['image'] as String,
      lat: (json['lat'] as num)?.toDouble(),
      lng: (json['lng'] as num)?.toDouble(),
      name: json['name'] as String,
      phone: json['phone'] as String,
      region: json['region'] as String);
}

Map<String, dynamic> _$OfficeToJson(Office instance) => <String, dynamic>{
      'address': instance.address,
      'id': instance.id,
      'image': instance.image,
      'lat': instance.lat,
      'lng': instance.lng,
      'name': instance.name,
      'phone': instance.phone,
      'region': instance.region
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) {
  return Locations(
      offices: (json['offices'] as List)
          ?.map((e) =>
              e == null ? null : Office.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      regions: (json['regions'] as List)
          ?.map((e) =>
              e == null ? null : Region.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$LocationsToJson(Locations instance) =>
    <String, dynamic>{'offices': instance.offices, 'regions': instance.regions};

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$LocationService on _LocationService, Store {
  final _$markersAtom = Atom(name: '_LocationService.markers');

  @override
  Map<String, Marker> get markers {
    _$markersAtom.reportObserved();
    return super.markers;
  }

  @override
  set markers(Map<String, Marker> value) {
    _$markersAtom.context.checkIfStateModificationsAreAllowed(_$markersAtom);
    super.markers = value;
    _$markersAtom.reportChanged();
  }

  final _$_LocationServiceActionController =
      ActionController(name: '_LocationService');

  @override
  dynamic getMarkers() {
    final _$actionInfo = _$_LocationServiceActionController.startAction();
    try {
      return super.getMarkers();
    } finally {
      _$_LocationServiceActionController.endAction(_$actionInfo);
    }
  }
}
