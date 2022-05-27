import 'package:flutter/material.dart';
import 'package:skyscrapper/helper/apiprachelper.dart';
import 'package:skyscrapper/modal/apipracmodal.dart';

import '../api/api.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 late Future<List<Apipracmodal>> fetchalldata;
 TextEditingController textfieldtext = TextEditingController();

bool isvertical =true;
 @override
  void initState() {
    super.initState();
    setState(() {

fetchalldata = Apiprachelper.apiprachelper.fetchpracdata();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              spreadRadius: 2,
              offset: Offset(0,1),
            ),
          ],
        ),
        child: TextField(
          onChanged: (val){
            setState(() {

              Apiprachelper.apiprachelper.search = textfieldtext.text.replaceAll(" ", "+");
             fetchalldata =  Apiprachelper.apiprachelper.fetchpracdata();
            });
          },
          controller: textfieldtext,
          decoration:  InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            suffix: IconButton(
               color: Colors.blue,
                onPressed: (){
              setState(() {
                print(".............");
               fetchalldata =  Apiprachelper.apiprachelper.fetchpracdata();
              });
            }, icon: Icon(Icons.search,color: Colors.blue,)),
          ),
        ),
      ),
      appBar: AppBar(title:Text("API Practice"),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){
          setState(() {
            if(isvertical==true)
              {
                isvertical=false;
              }
            else if(isvertical==false)
              {
                isvertical=true;
              }
            print(isvertical);
          });
        }, icon: Icon(Icons.loop),),
      ],
      ),
      body: FutureBuilder(
        future: fetchalldata,
        builder: (context,snapshot){
          if(snapshot.hasError)
          {
            return Center(child: Text("ERROR : ${snapshot.error}"),);
          }
          else if(snapshot.hasData)
          {
            List<Apipracmodal> res = snapshot.data as List<Apipracmodal>;
            return ListView.builder(
                scrollDirection: (isvertical)?Axis.vertical:Axis.horizontal,
                itemCount: res.length,
                itemBuilder: (context,i){
                  return Container(
                    margin: EdgeInsets.all(16),
                    width: (isvertical)?0:MediaQuery.of(context).size.width-20,
                    height: (isvertical)?250:0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(res[i].img),
                      ),
                    ),
                  );
                });
          }
          else
          {
            return  const Center(child: CircularProgressIndicator(),);
          }
        },
      )
    );
  }
}
