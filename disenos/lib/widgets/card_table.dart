import 'dart:ui';

import 'package:flutter/material.dart';

class CardTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.pie_chart_rounded,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: 'General',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.charging_station,
            color: Colors.redAccent,
            text: 'station',
          ),
          _SingleCard(
            icon: Icons.access_alarm_sharp,
            color: Colors.amberAccent,
            text: 'Alarm',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.access_time_sharp,
            color: Colors.blueGrey,
            text: 'Time',
          ),
          _SingleCard(
            icon: Icons.ad_units,
            color: Colors.lightGreen,
            text: 'Pad',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.add_circle_outline,
            color: Colors.cyan,
            text: 'Circule',
          ),
          _SingleCard(
            icon: Icons.cloud,
            color: Colors.purpleAccent,
            text: 'Bill',
          ),
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(text,
              style: TextStyle(
                color: color,
                fontSize: 18,
              ))
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
