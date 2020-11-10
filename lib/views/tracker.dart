import 'package:flutter/material.dart';
import 'package:covidapp/data/data.dart';

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  int totalCases = 0;
  int totalNewCasesToday = 0;
  int totalNewDeathsToday = 0;
  int totalDeath = 0;
  int totalCasesIndia = 0;
  int totalNewIndiaCasesToday = 0;
  int totalDeathIndia = 0;
  int totalNewDeathsTodayIndia = 0;
  int totalActiveCases = 0;

  void getData() async {
    NetworkHelper covidData =
        NetworkHelper('https://api.covid19api.com/summary');

    var globalData = await covidData.getData();

    // print(globalData["Global"][76]);
    setState(() {
      totalCases = globalData['Global']['TotalConfirmed'];
      totalNewCasesToday = globalData['Global']['TotalRecovered'];
      totalNewDeathsToday = globalData['Global']['NewDeaths'];
      totalDeath = globalData['Global']['TotalDeaths'];
      totalCasesIndia = globalData["Countries"][76]["TotalConfirmed"];
      totalNewIndiaCasesToday = globalData["Countries"][76]["NewConfirmed"];
      totalDeathIndia = globalData["Countries"][76]["TotalDeaths"];
      totalNewDeathsTodayIndia = globalData["Countries"][76]["NewDeaths"];
      totalActiveCases = globalData["Countries"][76]["TotalRecovered"];
    });
  }

  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Covid",
                  style: TextStyle(fontSize: 22, color: Colors.white)),
              Text(
                "Tracker",
                style: TextStyle(fontSize: 22, color: Colors.pink[100]),
              )
            ],
          ),
          backgroundColor: Colors.grey[700],
          elevation: 0.0,
        ),
        Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFFFFFF9),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Total Cases',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 20,
                            )),
                        Text('${totalCases.toString()}',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 45,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFFFFFFF),
                          Color(0xFFFFFFF9),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Total Recovered',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                            )),
                        Text('${totalNewCasesToday.toString()}',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 30,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 2.0),
                SizedBox(width: 2.0),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFFFFFFF),
                          Color(0xFFFFFFF9),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Total deaths',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                            )),
                        Text('${totalDeath.toString()}',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 30,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('India',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        )),
                  ),
                ]),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFFFFFFFF),
                                  Color(0xFFFFFFF9),
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Total Cases',
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 15,
                                    )),
                                Text('${totalCasesIndia.toString()}',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 5.0),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFFFFFFF),
                              Color(0xFFFFFFF9),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('New Cases',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                )),
                            Text('${totalNewIndiaCasesToday.toString()}',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 5.0),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFFFFFFF),
                              Color(0xFFFFFFF9),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Total Deaths',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                )),
                            Text('${totalDeathIndia.toString()}',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 5.0),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFFFFFFF),
                              Color(0xFFFFFFF9),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('New Deaths',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                )),
                            Text('${totalNewDeathsTodayIndia.toString()}',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 15.0),
              ],
            ))
      ],
    );
  }
}
