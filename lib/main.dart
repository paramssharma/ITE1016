import 'package:covidapp/views/blogs.dart';
import 'package:covidapp/views/precautions.dart';
import 'package:covidapp/views/symptoms.dart';
import 'package:covidapp/views/tracker.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'views/precautions.dart';
// import 'views/symptoms.dart';
// import 'views/blog.dart';
// import 'views/blogs.dart';

void main() => runApp(Covid19());

class Covid19 extends StatefulWidget {
  @override
  _Covid19State createState() => _Covid19State();
}

class _Covid19State extends State<Covid19> {
  int _currentIndex = 0;

  Widget returnPage(index) {
    setState(() {});
    switch (index) {
      case 0:
        return Tracker();
      case 1:
        return Precautions();
      case 2:
        return Symptoms();
      case 3:
        return Blogs();
      // case 4:
      //   return CasesScreen();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        // primaryColor: Colors.pink[50],
        scaffoldBackgroundColor: Colors.grey[300],
      ),
      home: Scaffold(
          // appBar: AppBar(
          //   title: Text('Covid19'),
          //   backgroundColor: Colors.white,
          //   centerTitle: true,
          // ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: returnPage(_currentIndex),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedItemColor: Colors.pink[300],
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.white,

            type: BottomNavigationBarType
                .fixed, //ye is liye daali h kyoki color change ho
            // rha tha 4 item pe
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.equalizer),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 0),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.security),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 0),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.new_releases),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 0),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 0),
                ),
              )
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.phone),
              //   title: Text(
              //     "",
              //     style: TextStyle(fontSize: 0),
              //   ),
              // )
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          )),
    );
  }
}
