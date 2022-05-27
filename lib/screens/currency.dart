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
    fontSize: 18,
    color: Colors.white,
  );

  double btcConverter = 0;
  var dropDownVal = "INR";

  List items = [
    "INR",
    "USD",
    "JPY",
    "UGX","CHF","BZD","MXN","ZMW","YER","KGS",
  ];

  @override
  void initState() {
    super.initState();
    fetchcurrency= Apihelpercurrency.apihelpercurrency.fetchCurrencyConverter();
    print(Apihelpercurrency.apihelpercurrency.fetchCurrencyConverter().runtimeType);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Convertor"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0,
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

            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.04,
                    width: width * 0.8,
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
                    height: height * 0.05,
                    width: width * 0.98,
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Current Currency",style: dataLightStyle,),
                        const SizedBox(width: 20,),
                        DropdownButton(
                            dropdownColor: Colors.blueAccent,
                            underline: Container(),
                            icon: Icon(Icons.keyboard_arrow_down_outlined,size: 20,color: Colors.white,),
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white
                            ),
                            alignment: Alignment.bottomRight,

                            value: dropDownVal,
                            items: items.map((e) => DropdownMenuItem(
                              value: e,
                              child: Text("$e"),),).toList(),
                            onChanged: (val) {
                              dropDownVal = val! as String;
                              setState(() {
                                if(val == "USD"){
                                  btcConverter = double.parse(data.USD) / 0.000026;
                                }else if(val == "INR"){
                                  btcConverter = double.parse(data.INR) / 0.000026;
                                }else if(val == "JPY"){
                                  btcConverter = double.parse(data.JPY) / 0.000026;
                                }else if(val == "UGX"){
                                  btcConverter = double.parse(data.UGX) / 0.000026;
                                }else if(val == "CHF"){
                                  btcConverter = double.parse(data.CHF) / 0.000026;
                                }else if(val == "BZD"){
                                  btcConverter = double.parse(data.BZD) / 0.000026;
                                }else if(val == "MXN"){
                                  btcConverter = double.parse(data.MXN) / 0.000026;
                                }else if(val == "ZMW"){
                                  btcConverter = double.parse(data.ZMW) / 0.000026;
                                }else if(val == "YER"){
                                  btcConverter = double.parse(data.YER) / 0.000026;
                                }else if(val == "KGS"){
                                  btcConverter = double.parse(data.KGS) / 0.000026;
                                }
                              });
                            }),
                      ],
                    ),
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
