import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skyscrapper/helper/apihelper.dart';
import 'package:skyscrapper/screens/covidpage.dart';

import '../helper/apihelpercovid.dart';
import '../helper/apihelpercovid.dart';
import '../modal/apimodalcovid.dart';

class FlagPage extends StatefulWidget {
  const FlagPage({Key? key}) : super(key: key);

  @override
  State<FlagPage> createState() => _FlagPageState();
}

class _FlagPageState extends State<FlagPage> {
  late Future<List<Covidapiflag>> fetchflagapi;
  TextStyle fontstyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  initState() {
    fetchflagapi = Apihelpercovid.apihelpercovid.fetchflagapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("Countries"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder(
          future: fetchflagapi,
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
              List<Covidapiflag> fetchdata = snapshot.data;

              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...fetchdata
                        .map(
                          (e) => InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return CovidPage(iso2: e.iso2, flag: e.flag);
                                }),
                              );
                            },
                            child: Container(
                              height: 200,
                              margin: const EdgeInsets.all(20),
                              padding: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: SvgPicture.network(
                                e.flag,
                                width: 700,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
