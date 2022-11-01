import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pages = [

    Container(
      color: Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/picone.png",
              width: 400.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Flexible",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Payment",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFF3A342D),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),

                Text(
                  "credit card and transfer , cryptocurrency",

                  style: TextStyle(
                      color: Color(0x8A000000),
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/pictwo.jpeg",
              width: 220.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "We Will",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Take Care",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFFE8BB57),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),

                Text(
                  "of tickets,transfers and a cool\n"
                      "place to stay \n",

                  style: TextStyle(
                      color: Color(0x8A000000),
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset("assets/images/picthree.jpeg", width: 250.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Relax",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "& Enjoy",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFF888C76),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),

                Text(
                  "Sunbathe , swim ,eat and drink \n"
                      "deliciously",
                  style: TextStyle(
                      color: Color(0x8A000000),
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/i4.jpg",
              width: 220.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Plan",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "A Trip",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFCC8E57),
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20.0),

                Text(
                  "Plan trips to more than 90 countries\n"
                      "with few taps on your mobile screen",
                  style: TextStyle(
                      color: Color(0x8A000000),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                ),
              ],

            ),

          )
        ],
      ),
    ),
    Container(
      constraints: BoxConstraints.expand(),

      decoration: const BoxDecoration(
     
        image: DecorationImage(
            image: AssetImage("assets/images/explore_1.jpg"),
            fit: BoxFit.cover),
      ),

    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: false,
        enableSideReveal: true,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        fullTransitionValue: 600,
        //enableSideReveal: true,
       // enableSlideIcon: true,
        waveType: WaveType.liquidReveal,


      ),
    );
  }
}