import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helper/apihelpercovid.dart';
import '../modal/apimodalcovid.dart';

class CovidPage extends StatefulWidget {
  String? iso2;
  String? flag;
  CovidPage({this.iso2, this.flag});

  @override
  State<CovidPage> createState() => _CovidPageState();
}

class _CovidPageState extends State<CovidPage> {
  late Future<List<dynamic>> fetchallcases;
  TextStyle fontstyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  void initState() {
    super.initState();
    fetchallcases = Apihelpercovid.apihelpercovid.fetchcoviddata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Covid 19 data"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.network(
              widget.flag!,
              width: 300,
            ),
            FutureBuilder(
                future: fetchallcases,
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
                    List<Covidapi> fetchdata = snapshot.data;

                    return Column(
                      children: [
                        ...fetchdata.map(
                          (e) {
                            return (widget.iso2 == e.CountryCode)
                                ? Container(
                                    height: 300,
                                    margin: const EdgeInsets.all(20),
                                    padding: const EdgeInsets.all(8),
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Country : ${e.Country}",
                                          style: fontstyle,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text("CountryCode : ${e.CountryCode}",
                                            style: fontstyle),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                            "TotalConfirmed : ${e.TotalConfirmed}",
                                            style: fontstyle),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text("TotalDeaths : ${e.TotalDeaths}",
                                            style: fontstyle),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                            "TotalRecovered : ${e.TotalRecovered}",
                                            style: fontstyle),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  )
                                : Container();
                          },
                        ).toList(),
                      ],
                    );
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
