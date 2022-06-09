import 'package:flutter/material.dart';
import 'package:skyscrapper/screens/covidpage.dart';
import 'package:skyscrapper/screens/currency.dart';
import 'package:skyscrapper/screens/flagpage.dart';
import 'package:skyscrapper/screens/homepage.dart';
import 'package:skyscrapper/screens/mainpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: HomePage(),
    home: FlagPage(),
    //home: MainPage(),
    //home: CryptoPage(),
  ));
}

///
/// Cards game
///

/*
import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';

void main() {
  runApp(MaterialApp(home: CardHomeView()));
}

class CardHomeView extends StatefulWidget {

  @override
  _CardHomeViewState createState() => _CardHomeViewState();
}

class _CardHomeViewState extends State<CardHomeView> {
  Suit suit = Suit.spades;
  CardValue value = CardValue.ace;

  // This style object overrides the styles for the suits, replacing the
  // image-based default implementation for the suit emblems with a text based
  // implementation.
  PlayingCardViewStyle myCardStyles = PlayingCardViewStyle(suitStyles: {
    Suit.spades: SuitStyle(
        builder: (context) => FittedBox(
          fit: BoxFit.fitHeight,
          child: Text(
            "♠",
            style: TextStyle(fontSize: 500),
          ),
        ),
        style: TextStyle(color: Colors.grey[800])),
    Suit.hearts: SuitStyle(
        builder: (context) => FittedBox(
          fit: BoxFit.fitHeight,
          child: Text(
            "♥",
            style: TextStyle(fontSize: 500),
          ),
        ),
        style: TextStyle(color: Colors.red)),
    Suit.diamonds: SuitStyle(
        builder: (context) => FittedBox(
          fit: BoxFit.fitHeight,
          child: Text(
            "♦",
            style: TextStyle(fontSize: 500),
          ),
        ),
        style: TextStyle(color: Colors.red)),
    Suit.clubs: SuitStyle(
        builder: (context) => FittedBox(
          fit: BoxFit.fitHeight,
          child: Text(
            "♣",
            style: TextStyle(fontSize: 500),
          ),
        ),
        style: TextStyle(color: Colors.grey[800])),
    Suit.joker: SuitStyle(
        builder: (context) => Container()),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PlayingCardView(card: PlayingCard(suit, value), style: myCardStyles),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            DropdownButton<Suit>(
                value: suit,
                items: Suit.values
                    .map((s) =>
                    DropdownMenuItem(value: s, child: Text(s.toString())))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    suit = val!;
                  });
                }),
            DropdownButton<CardValue>(
                value: value,
                items: CardValue.values
                    .map((s) =>
                    DropdownMenuItem(value: s, child: Text(s.toString())))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    value = val!;
                  });
                }),
          ])
        ],
      ),
    );
  }
}*/

///
/// game app
///
/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_levels_scrolling_map/game_levels_scrolling_map.dart';
import 'package:game_levels_scrolling_map/model/point_model.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapVerticalExample(),
      //home: MapVerticalExample(),
    );
  }
}

class MapVerticalExample extends StatefulWidget {
  const MapVerticalExample({Key? key}) : super(key: key);

  @override
  State<MapVerticalExample> createState() => _MapVerticalExampleState();
}

class _MapVerticalExampleState extends State<MapVerticalExample> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: GameLevelsScrollingMap.scrollable(
            imageUrl:"https://raw.githubusercontent.com/MohamedSayed9392/Game-Levels-Scrolling-Map/master/example/assets/drawable/map_vertical.png",
            direction: Axis.vertical,
            reverseScrolling: true,
            pointsPositionDeltaX: 25,
            pointsPositionDeltaY: 25,
            svgUrl: 'https://raw.githubusercontent.com/MohamedSayed9392/Game-Levels-Scrolling-Map/b194f58d2e76dc9ea48e60857e484823f6d00f63/example/assets/svg/map_vertical.svg',
            points: points,)
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void initState() {
    fillTestData();
  }

  List<PointModel> points = [];

  void fillTestData() {
    for(int i = 0; i<100 ; i++){
      points.add(PointModel(100,testWidget(i)));
    }
  }


  Widget testWidget(int order) {
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            "raw.githubusercontent.com/MohamedSayed9392/Game-Levels-Scrolling-Map/master/example/assets/drawable/map_vertical_point.png",
            fit: BoxFit.fitWidth,
            width: 50,
          ),
          Text("$order",
              style: const TextStyle(color: Colors.black,
                  fontSize: 15))
        ],
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text("Point $order"),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}

*/
