import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xfff0f0f0),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Covid",
              style: TextStyle(fontSize: 22),
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontSize: 22, color: Colors.pink[100]),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
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
            child:
                // Adobe XD layer: 'sore throat' (shape)
                Container(
              width: 82.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/sore_throat.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 187.0),
            child:
                // Adobe XD layer: 'sore throat' (shape)
                Container(
              width: 82.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/cough.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 325.0),
            child:
                // Adobe XD layer: 'sore throat' (shape)
                Container(
              width: 82.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/fever.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 467.0),
            child:
                // Adobe XD layer: 'sore throat' (shape)
                Container(
              width: 82.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/headache.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(153.0, 71.0),
            child: SizedBox(
              width: 168.0,
              height: 53.0,
              child: Text(
                'Sore Throat',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 30,
                  color: const Color(0xff1d1d1d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 211.0),
            child: SizedBox(
              width: 168.0,
              height: 53.0,
              child: Text(
                'Cough',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 30,
                  color: const Color(0xff1d1d1d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 349.0),
            child: SizedBox(
              width: 168.0,
              height: 53.0,
              child: Text(
                'Fever',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 30,
                  color: const Color(0xff1d1d1d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 491.0),
            child: SizedBox(
              width: 168.0,
              height: 53.0,
              child: Text(
                'Headache',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 30,
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
