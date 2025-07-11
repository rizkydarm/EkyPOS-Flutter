import 'dart:convert';

import 'package:eky_pos/data/models/responses/me_response_model.dart';

class MyoutletResponseModel {
  Outlet data;
  MyoutletResponseModel({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return {
      'data': data.toMap(),
    };
  }

  factory MyoutletResponseModel.fromMap(Map<String, dynamic> map) {
    return MyoutletResponseModel(
      data: Outlet.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyoutletResponseModel.fromJson(String source) => MyoutletResponseModel.fromMap(json.decode(source));
}
