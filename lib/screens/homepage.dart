import 'dart:async';

import 'package:flutter/material.dart';

import '../helper/apihelper.dart';
import '../modal/apimodal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Peopleapi?> fetchpeoples;
  TextStyle fontstyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  @override
  void initState() {
    super.initState();
    fetchpeoples = Apihelper.apihelper.fetchrandompeopledata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random people data"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FutureBuilder(
                future: fetchpeoples,
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        "Error: ${snapshot.error}",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    Peopleapi fetchdata = snapshot.data;
                    return Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            alignment: Alignment.center,
                            height: 550,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Title : ${fetchdata.title}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "FirstName : ${fetchdata.first}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "LastName : ${fetchdata.last} ",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Age : ${fetchdata.age}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Gender : ${fetchdata.gender}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Email : ${fetchdata.email}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Date Of Birth : ${fetchdata.dob}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Phone Number : ${fetchdata.phone}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Cell Numbeer : ${fetchdata.cell}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Post Code : ${fetchdata.postcode}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Street Number : ${fetchdata.streetno}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Street name : ${fetchdata.streetname}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "City : ${fetchdata.city}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "State : ${fetchdata.state}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Country : ${fetchdata.country}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                        ));
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
          ],
        ),
      ),
    );
  }
}
