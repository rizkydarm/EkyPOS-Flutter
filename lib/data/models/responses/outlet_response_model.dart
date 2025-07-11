import 'dart:convert';

import 'package:eky_pos/data/models/responses/me_response_model.dart';

class OutletResponseModel {
  final List<Outlet> data;

  OutletResponseModel({required this.data});

  factory OutletResponseModel.fromMap(Map<String, dynamic> map) {
    return OutletResponseModel(
      data: List<Outlet>.from(map['data']?.map((x) => Outlet.fromMap(x))),
    );
  }

  factory OutletResponseModel.fromJson(String source) =>
      OutletResponseModel.fromMap(json.decode(source));
}
