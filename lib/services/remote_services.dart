import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/model.dart';
import 'service.dart';

class RemoteServices {
  static var client = http.Client();

  static void printResponse(
    Map<String, String> header, dynamic body, http.Response response) {
    debugPrint('Header: $header');
    debugPrint('Body : $body');
    debugPrint('URL: ${response.request!.url}');
    debugPrint('Response status: ${response.statusCode}');
    debugPrint('Response body: ${response.body}');
    debugPrint('Response body: ${response.headers}');
  //  debugPrint('Response body: ${response.isRedirect}');
  }


  static const accessToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNTc3ZDVmOGU5OWIxNjk1NmI3ZjliNWE4YTczYzllNzMyZjFkZjg4NTkyYTFiYTg5NjM1NDM4NWIxNmVmM2ZmZGEwNjc2NDI2MzQ1YTQxMzEiLCJpYXQiOjE2Nzc3MzQ2MjYuMTg2MzU3LCJuYmYiOjE2Nzc3MzQ2MjYuMTg2MzYsImV4cCI6MTcwOTM1NzAyNi4xODI3MDQsInN1YiI6IjQ2Iiwic2NvcGVzIjpbImZyb250dXNlciJdfQ.Yu5qMQ_H-f8h49t0c6iLRFuM41jf28YuDkzz_NbVFkxWn68TGyU-QqovQ5HfdNpQ0ba__RJ25wUGSUUcHKjwEM62CLn74GaTsRKA4H0IBdKeRxaAQjw9AfR4MnWYLqCnbuFaFjC9Fjzwf828sd70vzqNY_E9vVGrjNDLx5UBmgn-QZaIRq4nOYvWpp5GXXGFUeUW1SgyKy9MXEajckcQ4ayTsOZ2HJhBQ2x6ZislJgzg_xiqtx4ViifJRsnT9CeK6pThEb4byZpoTGNdwtNrJx0vK9jKBcKXSokIJ_47fAhBAx3PCRisNP32IfHYkp-J9TCJYuoTwwBl1u0B842y9Xtnl4Mblbiu58peKwXTrZNavQ1x566hpLZIiaw40UxSGBCjDUbIieOZAT3zMnmq4uA_OIkoSZffCKhCz39W-t131RTpczEBrdhn9JnAiwPna5QUftInkMvR3M3X6Gdi5tSpJqoPehK3L7w0SyWlVjzIE7F1Ewo0nueRcwvczKRleD--8qJGGhh_vgZGKZQY1Jtn_W8sXgfyajLHkCUpaTe_1ZROdRYwIx_nyk5abi914q839Mh-as3VmZsCEQsxWcf0Npqy4qLDfrBEvqLHGfhxizfankTyhgREyG3bVsH0aHq8I-4phTkZU9cJ0IaKxEqjq-zWXR3aqKBKc5zLZN8";


  static Future<http.Response> getHomeList(String city, String state, String country) async {
    Map<String, String> header = {
      'Content-Type': 'multipart/form-data',
      //'accept-language': 'en-GB,en-US;q=0.9,en;q=0.8',
      'Authorization': 'Bearer $accessToken',
      //'Accept-Encoding': 'gzip, deflate, br',
    };
    var map =  Map<String, dynamic>();
    map['city_name'] = city;
    map['state_name'] = state;
    map['country_name'] = country;

    http.Response response = await http.post(
      Uri.parse(Apis.baseAPI + Apis.homeListApi),
      headers: header,
      body: map,
    );
    printResponse(header, map, response);
    return response;
  }


}
