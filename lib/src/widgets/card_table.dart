import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            icon: Icons.border_all,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.cloud,
            color: Colors.purple,
            text: 'Cloud',
          ),
          _SingleCard(
            icon: Icons.shop,
            color: Colors.purpleAccent,
            text: 'Shopping',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.chat_rounded,
            color: Colors.orange,
            text: 'Message',
          ),
          _SingleCard(
            icon: Icons.navigation_sharp,
            color: Colors.yellow,
            text: 'Map',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.border_all,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: 'Transport',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

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
          ),
          radius: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 18,
          ),
        ),
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
    ;
  }
}
