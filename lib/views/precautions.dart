import 'package:flutter/material.dart';

class Precautions extends StatefulWidget {
  @override
  _PrecautionsState createState() => _PrecautionsState();
}

class _PrecautionsState extends State<Precautions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Covid", style: TextStyle(fontSize: 22, color: Colors.white)),
            Text(
              "Precautions",
              style: TextStyle(fontSize: 22, color: Colors.pink[100]),
            )
          ],
        ),
        backgroundColor: Colors.grey[700],
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(22.0, 33.0),
            child: Container(
              width: 336.0,
              height: 114.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(57.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 173.0),
            child: Container(
              width: 336.0,
              height: 114.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(57.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 313.0),
            child: Container(
              width: 336.0,
              height: 114.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(57.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 453.0),
            child: Container(
              width: 336.0,
              height: 114.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(57.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(51.0, 47.0),
            child: Container(
              width: 82.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/wearmask.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 187.0),
            child: Container(
              width: 82.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/sanitization.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 325.0),
            child: Container(
              width: 82.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/socialdistancing.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 467.0),
            child: Container(
              width: 82.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/cashless.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(153.0, 75.0),
            child: SizedBox(
              width: 168.0,
              height: 53.0,
              child: Text(
                'Wear Mask',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 25,
                  color: const Color(0xff1d1d1d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 205.0),
            child: SizedBox(
              width: 168.0,
              height: 53.0,
              child: Text(
                'Sanitize your hands',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 25,
                  color: const Color(0xff1d1d1d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 342.0),
            child: SizedBox(
              width: 168.0,
              height: 53.0,
              child: Text(
                'Maintain Social Distancing',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 25,
                  color: const Color(0xff1d1d1d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 481.0),
            child: SizedBox(
              width: 168.0,
              height: 53.0,
              child: Text(
                'Cashless Payments',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 25,
                  color: const Color(0xff1d1d1d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
