import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modal/apimodalcovid.dart';

class Apihelpercovid {
  Apihelpercovid._();
  static final Apihelpercovid apihelpercovid = Apihelpercovid._();
  // String baseurl ="https://api.covidtracking.com/";
  // String endpoint ="v1/states/current.json";
  //
  // Future<Covidapi?>fetchcoviddata()async{
  //   Uri api =  Uri.parse(baseurl+endpoint);
  //   http.Response response = await http.get(api);
  //
  //   List data = jsonDecode(response.body);
  //   List cases =data.map((e) => Covidapi.fromJson(e)).toList();
  // }
  String baseurl = "https://api.covid19api.com/summary";

  Future<List<dynamic>> fetchcoviddata() async {
    Uri api = Uri.parse(baseurl);
    http.Response response = await http.get(api);
    print(".............");
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data['Countries'].runtimeType);
    print(".............");

    List<dynamic> alldata = data['Countries'];
    for (int i = 0; i <= 193; i++) {
      Covidapi.fetchcountrycode.add(data['Countries'][i]['CountryCode']);
    }
    List<Covidapi> peoples = alldata.map((e) => Covidapi.fromJson(e)).toList();
    print(peoples.runtimeType);

    return peoples;
  }

  String flagbaseurl =
      "https://countriesnow.space/api/v0.1/countries/flag/images";

  Future<List<Covidapiflag>> fetchflagapi() async {
    await fetchcoviddata();
    List contrycode = Covidapi.fetchcountrycode;

    print(contrycode);

    Uri api = Uri.parse(flagbaseurl);
    http.Response response = await http.get(api);

    Map<String, dynamic> data = jsonDecode(response.body);
    List alldata = data['data'];

    List<Covidapiflag> getchflagdata =
        alldata.map((e) => Covidapiflag.fromJson(e)).toList();
    return getchflagdata;
  }
}
