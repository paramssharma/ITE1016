import 'package:flutter/material.dart';
import 'package:covidapp/data/data.dart';

class Cases extends StatefulWidget {
  @override
  _CasesState createState() => _CasesState();
}

class _CasesState extends State<Cases> {
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
      totalNewCasesToday = globalData['Global']['NewConfirmed'];
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
              Text(
                "Covid",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "Tracker",
                style: TextStyle(fontSize: 22, color: Colors.pink[100]),
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // actions: <Widget>[
          //   GestureDetector(
          //     onTap: () {
          //       uploadBlog();
          //     },
          //     child: Container(
          //         padding: EdgeInsets.symmetric(horizontal: 16),
          //         child: Icon(Icons.file_upload)),
          //   )
          // ],
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
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Total Cases',
                            style: TextStyle(
                              color: Color(0xFF8D8E98),
                              fontSize: 30,
                            )),
                        Text('${totalCases.toString()}',
                            style: TextStyle(
                                color: Color(0xFF8D8E98),
                                fontSize: 50,
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
                //pehla dabba
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('New cases',
                            style: TextStyle(
                              color: Color(0xFF8D8E98),
                              fontSize: 15,
                            )),
                        Text('${totalNewCasesToday.toString()}',
                            style: TextStyle(
                                color: Color(0xFF8D8E98),
                                fontSize: 25,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 2.0),
                //doosra dabba
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Total deaths today',
                            style: TextStyle(
                              color: Color(0xFF8D8E98),
                              fontSize: 15,
                            )),
                        Text('${totalNewDeathsToday.toString()}',
                            style: TextStyle(
                                color: Color(0xFF8D8E98),
                                fontSize: 25,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 2.0),
                //teesra dabba
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Total deaths',
                            style: TextStyle(
                              color: Color(0xFF8D8E98),
                              fontSize: 15,
                            )),
                        Text('${totalDeath.toString()}',
                            style: TextStyle(
                                color: Color(0xFF8D8E98),
                                fontSize: 25,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('India',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                            ),
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Total cases: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                              Text('${totalCasesIndia.toString()}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('New cases: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                              Text('${totalNewIndiaCasesToday.toString()}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Total deaths: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                              Text('${totalDeathIndia.toString()}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Deaths today: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                              Text('${totalNewDeathsTodayIndia.toString()}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Active cases: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                              Text('${totalActiveCases.toString()}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF8D8E98),
                                  )),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            )),
      ],
    );
  }
}
