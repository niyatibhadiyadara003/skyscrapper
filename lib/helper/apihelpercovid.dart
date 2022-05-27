import 'dart:convert';

import 'package:http/http.dart'as http;

import '../modal/apimodalcovid.dart';

class Apihelpercovid
{
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
String baseurl ="https://api.rootnet.in/covid19-in/stats/latest";
  Future<List<Covidapi>>fetchcoviddata()async{
      Uri api =  Uri.parse(baseurl);
      http.Response response = await http.get(api);

      Map<String,dynamic> data= jsonDecode(response.body);
      List<Covidapi> p1 =[];
      Covidapi peoples = Covidapi.fromJson(data);
      Covidapi peoples1 = Covidapi.fromJson1(data);
      Covidapi peoples2 = Covidapi.fromJson2(data);
      Covidapi peoples3 = Covidapi.fromJson3(data);
      Covidapi peoples4 = Covidapi.fromJson4(data);

    p1.add(peoples);
    p1.add(peoples1);
    p1.add(peoples2);
    p1.add(peoples3);
    p1.add(peoples4);
      return p1;
    }
}