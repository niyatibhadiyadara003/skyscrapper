import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skyscrapper/modal/apimodalcurrency.dart';

import '../helper/apihelpercurrency.dart';
/*
class CryptoPage extends StatefulWidget {
  const CryptoPage({Key? key}) : super(key: key);

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  late Future<Currencyapi?> fetchcurrency;
  dynamic drpval = "INR";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchcurrency = Apihelpercurrency.apihelpercurrency.fetcurrencydata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CRYPTO CONVERTOR"),
      centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            FutureBuilder(
                future: fetchcurrency,
                builder: (context,AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("Error: ${snapshot.error}", style: TextStyle(
                        fontSize: 12,
                      ),),
                    );
                  }
                  else if (snapshot.hasData) {
                    Currencyapi fetchdata = snapshot.data;
                    return  Container(
                      height: 60,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width*0.75,
                      color: Colors.blueAccent,
                      child: Text("1 BTC =  ${fetchdata.buy}",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),),
                    );
                  }
                  else
                  {
                    return CircularProgressIndicator();
                  }
                }),
            Spacer(),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.75,
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Current Currency",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
              Container(
                width: 60,
                alignment: Alignment.center,
                child: DropdownButton(
                  dropdownColor: Colors.blueAccent,
                    underline: Container(),
                    icon: Icon(Icons.keyboard_arrow_down_outlined,size: 20,color: Colors.white,),
                    value: drpval,
                    items: [
                      DropdownMenuItem(
                        child: Text("INR",style: TextStyle(
                color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                ),),
                        value: "INR",
                        onTap: (){
                        },
                      ),
                      DropdownMenuItem(
                          child: Text("USD",style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                        value: "USD",
                        onTap: (){
                        },),
                      DropdownMenuItem(
                        value: "JPY",
                        onTap: (){
                        },
                          child: Text("JPY",style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),),
                      DropdownMenuItem(
                        value: "EUR",
                        onTap: (){
                        },
                        child: Text("EUR",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),),
                      DropdownMenuItem(
                        value: "AUD",
                        onTap: (){
                        },
                        child: Text("AUD",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),),
                      DropdownMenuItem(
                        value: "BRL",
                        onTap: (){
                        },
                        child: Text("BRL",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),),
                      DropdownMenuItem(
                        value: "CAD",
                        onTap: (){
                        },
                        child: Text("CAD",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),),
                      DropdownMenuItem(
                        value: "CNY",
                        onTap: (){
                        },
                        child: Text("CNY",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),),
                      DropdownMenuItem(
                        value: "NZD",
                        onTap: (){
                        },
                        child: Text("NZD",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),),
                    ],
                    onChanged: (val){
                      setState(() {
                        drpval=val;
                      });
                    }),
              ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
*/

class CryptoPage extends StatefulWidget {
  const CryptoPage({Key? key}) : super(key: key);

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  late Future<Currencyapi?> fetchcurrency;
  TextStyle dataStyle = const TextStyle(
      fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);
  TextStyle dataLightStyle = const TextStyle(
    decoration: TextDecoration.none,
    fontSize: 18,
    color: Colors.white,
  );

  double btcConverter = 0;
  var dropDownVal = "INR";

  List items = [
    "INR",
    "USD",
    "JPY",
    "UGX",
    "CHF",
    "BZD",
    "MXN",
    "ZMW",
    "YER",
    "KGS",
  ];
  List items1 = [
    "INR",
    "USD",
    "JPY",
    "UGX",
    "CHF",
    "BZD",
  ];
  bool isios = false;

  @override
  void initState() {
    super.initState();
    fetchcurrency =
        Apihelpercurrency.apihelpercurrency.fetchCurrencyConverter();
    print(Apihelpercurrency.apihelpercurrency
        .fetchCurrencyConverter()
        .runtimeType);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return (isios == false)
        ? Scaffold(
            appBar: AppBar(
              title: const Text("Crypto Convertor"),
              centerTitle: true,
              backgroundColor: Colors.indigo.shade500,
              elevation: 0,
              actions: [
                Switch(
                    value: isios,
                    onChanged: (val) {
                      setState(() {
                        isios = val;
                      });
                      print(val);
                    }),
              ],
            ),
            body: FutureBuilder(
              future: fetchcurrency,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                } else if (snapshot.hasData) {
                  Currencyapi data = snapshot.data;

                  print(data.USD);

                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Container(
                          height: height * 0.06,
                          width: width * 0.8,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade800,
                          ),
                          child: Text(
                            "1 BTC = $btcConverter",
                            style: dataLightStyle,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: height * 0.08,
                          width: width * 0.98,
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade800,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Current Currency",
                                style: dataLightStyle,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              DropdownButton(
                                  dropdownColor: Colors.indigo.shade500,
                                  underline: Container(),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                  alignment: Alignment.bottomRight,
                                  value: dropDownVal,
                                  items: items
                                      .map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text("$e"),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (val) {
                                    dropDownVal = val! as String;
                                    setState(() {
                                      if (val == "USD") {
                                        btcConverter = data.USD.toDouble();
                                      } else if (val == "INR") {
                                        btcConverter = data.INR;
                                      } else if (val == "JPY") {
                                        btcConverter = data.JPY;
                                      } else if (val == "UGX") {
                                        btcConverter = data.UGX;
                                      } else if (val == "CHF") {
                                        btcConverter = data.CHF;
                                      } else if (val == "BZD") {
                                        btcConverter = data.BZD;
                                      } else if (val == "MXN") {
                                        btcConverter = data.MXN;
                                      } else if (val == "ZMW") {
                                        btcConverter = data.ZMW;
                                      } else if (val == "YER") {
                                        btcConverter = data.YER;
                                      } else if (val == "KGS") {
                                        btcConverter = data.KGS;
                                      }
                                    });
                                  }),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          )
        : CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: const Text(
                "Crypto Convertor",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.indigo,
              trailing: CupertinoSwitch(
                  value: isios,
                  onChanged: (val) {
                    setState(() {
                      isios = val;
                    });
                  }),
            ),
            child: FutureBuilder(
              future: fetchcurrency,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                } else if (snapshot.hasData) {
                  Currencyapi data = snapshot.data;

                  print(data.USD);

                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Container(
                          height: height * 0.06,
                          width: width * 0.8,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade800,
                          ),
                          child: Text(
                            "1 BTC = $btcConverter",
                            style: dataLightStyle,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: height * 0.08,
                          width: width * 0.98,
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade800,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Current Currency",
                                style: dataLightStyle,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              CupertinoContextMenu(
                                  actions: items1
                                      .map(
                                        (e) => SingleChildScrollView(
                                          child: CupertinoContextMenuAction(
                                              child: Text("$e"),
                                              onPressed: () {
                                                setState(() {
                                                  if (e == "USD") {
                                                    btcConverter =
                                                        data.USD.toDouble();
                                                  } else if (e == "INR") {
                                                    btcConverter = data.INR;
                                                  } else if (e == "JPY") {
                                                    btcConverter = data.JPY;
                                                  } else if (e == "UGX") {
                                                    btcConverter = data.UGX;
                                                  } else if (e == "CHF") {
                                                    btcConverter = data.CHF;
                                                  } else if (e == "BZD") {
                                                    btcConverter = data.BZD;
                                                  } else if (e == "MXN") {
                                                    btcConverter = data.MXN;
                                                  } else if (e == "ZMW") {
                                                    btcConverter = data.ZMW;
                                                  } else if (e == "YER") {
                                                    btcConverter = data.YER;
                                                  } else if (e == "KGS") {
                                                    btcConverter = data.KGS;
                                                  }
                                                  Navigator.of(context).pop();
                                                });
                                              }),
                                        ),
                                      )
                                      .toList(),
                                  child: Icon(
                                    CupertinoIcons.app,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          );
  }
}
