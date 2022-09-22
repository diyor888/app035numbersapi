import 'dart:convert';
import 'package:app035numbersapi/model/Numbers.dart';
import 'package:http/http.dart';
class Network {

  static String BASE = "numbersapi.p.rapidapi.com";
  static Map<String, String> headers = {
    'X-RapidAPI-Key': '530fd1059cmsh900689095c819b7p13ab08jsn4c79da04130d',
    'X-RapidAPI-Host': 'numbersapi.p.rapidapi.com'
  };
  //api
  // ignore: non_constant_identifier_names
  static String Api_data = "/6/21/date";
  //Request
// ignore: non_constant_identifier_names
static Future<String?>GET(String api, Map<String, String> params ) async {
  var uri = Uri.https(BASE,api,params);
  var response = await get(uri,headers: headers);
  if(response.statusCode == 200 ) {
  return response.body;
  }
return null;
}
  //params  params: {fragment: 'true', json: 'true'},
  static Map<String, String> paramsEmpty() {
    Map<String, String> params = new Map();
    params.addAll({
      "fragment": 'true',
      "json": 'true'
    });
    return params;
  }
  //parsing
  static parseNumber(String body){
    dynamic json = jsonDecode(body);
    var data = Numbers.fromJson(json);
    return data;
  }
}
