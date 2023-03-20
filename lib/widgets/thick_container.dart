import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';

class ThickContainer  extends StatelessWidget {
  final bool? isColor;
  const ThickContainer ({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: isColor==null? Colors.white:Color(0xff8accf7))
      )
    );
  }
}