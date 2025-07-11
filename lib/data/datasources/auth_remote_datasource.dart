import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:eky_pos/core/constants/variables.dart';
import 'package:eky_pos/data/datasources/auth_local_datasource.dart';
import 'package:eky_pos/data/models/responses/auth_response_model.dart';
import 'package:eky_pos/data/models/responses/myoutlet_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  Future<Either<String, AuthResponseModel>> login(
      String email, String password) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/login'),
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromMap(jsonDecode(response.body)));
    } else {
      return Left(response.body);
    }
  }

  //register
  Future<Either<String, AuthResponseModel>> register(
      String name, String address, String email, String password) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/register'),
      body: jsonEncode({
        'name': name,
        'business_name': name,
        'email': email,
        'password': password,
        'address': address,
      }),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
    );

    if (response.statusCode == 201) {
      return Right(AuthResponseModel.fromMap(jsonDecode(response.body)));
    } else {
      return Left(response.body);
    }
  }

  //me
  Future<Either<String, AuthResponseModel>> me(String token) async {
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/me'),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromMap(jsonDecode(response.body)));
    } else {
      return Left(response.body);
    }
  }

  //myoutlet
  Future<Either<String, MyoutletResponseModel>> myoutlet() async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/my-outlet'),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      print(response.body);
      return Right(MyoutletResponseModel.fromMap(jsonDecode(response.body)));
    } else {
      return Left(response.body);
    }
  }

  //logout
  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/logout'),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return Right('Logout success');
    } else {
      return Left(response.body);
    }
  }
}
