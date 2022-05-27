import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modal/apimodalcurrency.dart';

class Apihelpercurrency {
  Apihelpercurrency._();
  static final Apihelpercurrency apihelpercurrency = Apihelpercurrency._();
  String BASE_URL = "https://apiv2.bitcoinaverage.com/constants/exchangerates";
  String ENDPOINT = "/global";

  Future<Currencyapi?> fetchCurrencyConverter() async {
    Uri API = Uri.parse(BASE_URL + ENDPOINT);

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
