import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class people_page extends StatelessWidget {
  const people_page ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Color.fromARGB(255, 181, 53, 53),
      child: Text('Pepole',textAlign: TextAlign.center,),
    );
  }
}