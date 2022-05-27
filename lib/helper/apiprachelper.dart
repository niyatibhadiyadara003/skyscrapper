import 'dart:convert';

import 'package:http/http.dart' as http;

import '../api/api.dart';
import '../modal/apipracmodal.dart';
import '../screens/mainpage.dart';

class Apiprachelper
{
  Apiprachelper._();
   static final Apiprachelper apiprachelper =Apiprachelper._();



   String? search;
   String apikey ="27284752-e1d0d623041252e3a995e8c21";

 Future<List<Apipracmodal>>fetchpracdata()async{
   String text = search??"yellow+flowers";
   String Api ="https://pixabay.com/api/?key=$apikey&q=$text&image_type=photo&pretty=true";

   print(Api);
   print(search);
  http.Response  res =  await http.get(Uri.parse(Api),);

  Map data = jsonDecode(res.body);
  List alldata = data['hits'];
  List<Apipracmodal> response = alldata.map((e) => Apipracmodal.fromJson(e)).toList();
  return response;
 }

}