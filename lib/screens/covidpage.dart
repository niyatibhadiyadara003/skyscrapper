import 'package:flutter/material.dart';

import '../helper/apihelpercovid.dart';
import '../modal/apimodalcovid.dart';

class CovidPage extends StatefulWidget {
  const CovidPage({Key? key}) : super(key: key);

  @override
  State<CovidPage> createState() => _CovidPageState();
}

class _CovidPageState extends State<CovidPage> {
  late Future<List<Covidapi>?> fetchallcases;
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
      appBar: AppBar(
        title: Text("Covid 19 data"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            padding: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.75,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "State : ${fetchdata[0].loc}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesIndian : ${fetchdata[0].confirmedCasesIndian}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesForeign : ${fetchdata[0].confirmedCasesForeign}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Discharged : ${fetchdata[0].discharged}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Deaths : ${fetchdata[0].deaths}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "TotalConfimerd : ${fetchdata[0].totalConfirmed}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.75,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "State : ${fetchdata[1].loc}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesIndian : ${fetchdata[1].confirmedCasesIndian}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesForeign : ${fetchdata[1].confirmedCasesForeign}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Discharged : ${fetchdata[1].discharged}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Deaths : ${fetchdata[1].deaths}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "TotalConfimerd : ${fetchdata[1].totalConfirmed}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.75,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "State : ${fetchdata[2].loc}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesIndian : ${fetchdata[2].confirmedCasesIndian}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesForeign : ${fetchdata[2].confirmedCasesForeign}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Discharged : ${fetchdata[2].discharged}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Deaths : ${fetchdata[2].deaths}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "TotalConfimerd : ${fetchdata[2].totalConfirmed}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.75,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "State : ${fetchdata[3].loc}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesIndian : ${fetchdata[3].confirmedCasesIndian}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesForeign : ${fetchdata[3].confirmedCasesForeign}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Discharged : ${fetchdata[3].discharged}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Deaths : ${fetchdata[3].deaths}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "TotalConfimerd : ${fetchdata[3].totalConfirmed}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.75,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "State : ${fetchdata[4].loc}",
                                  style: fontstyle,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesIndian : ${fetchdata[4].confirmedCasesIndian}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "ConfirmedCasesForeign : ${fetchdata[4].confirmedCasesForeign}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Discharged : ${fetchdata[4].discharged}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text("Deaths : ${fetchdata[4].deaths}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "TotalConfimerd : ${fetchdata[4].totalConfirmed}",
                                    style: fontstyle),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
