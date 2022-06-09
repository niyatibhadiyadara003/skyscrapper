import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modal/apimodalcurrency.dart';

class Apihelpercurrency {
  Apihelpercurrency._();
  static final Apihelpercurrency apihelpercurrency = Apihelpercurrency._();
  String BASE_URL = "https://v6.exchangerate-api.com/v6/";
  String apikey = '8d33ade4d414f5814371df4a';
  String ENDPOINT = "/latest/USD";

  Future<Currencyapi?> fetchCurrencyConverter() async {
    Uri API = Uri.parse(BASE_URL + apikey + ENDPOINT);

    http.Response response = await http.get(API);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      Currencyapi currencyapi = Currencyapi.fromJson(data);

      return currencyapi;
    } else {
      print("No data.........");
    }
  }
}
