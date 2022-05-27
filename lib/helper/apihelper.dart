import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:skyscrapper/modal/apimodal.dart';
class Apihelper
{
  Apihelper._();
  static final Apihelper apihelper = Apihelper._();
  String baseurl ="https://randomuser.me/api/";


  Future<Peopleapi> fetchrandompeopledata()async{
    Uri api =  Uri.parse(baseurl);
    http.Response response = await http.get(api);

    Map<String,dynamic> data = jsonDecode(response.body);
    Peopleapi peoples = Peopleapi.fromJson(data);
    // List data= jsonDecode(response.body);
    // List<Peopleapi> peoples = data.map((e) => Peopleapi.fromJson(e)).toList();
    // List<Peopleapi> peoples = data.map((e) => Peopleapi.fromJson(e)).toList();
    return peoples;
  }
}