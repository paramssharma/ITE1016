import 'package:covidapp/views/blogs.dart';
import 'package:covidapp/views/precautions.dart';
import 'package:covidapp/views/symptoms.dart';
import 'package:covidapp/views/tracker.dart';
import 'package:flutter/material.dart';

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
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[600],
      ),
      home: Scaffold(
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
            backgroundColor: Colors.grey[700],
            type: BottomNavigationBarType.fixed,
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
