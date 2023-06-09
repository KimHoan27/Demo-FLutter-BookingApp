import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_lauout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText; 
  final bool? isColor;
  const AppColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Row(
                    children: [
                      Column(
                        crossAxisAlignment: alignment,
                        // style: isColor==null? Styles.headLineStyle3
                        //         .copyWith(color: Colors.white):Styles.headLineStyle3,
                        children: [
                          Text(firstText, style: isColor==null? Styles.headLineStyle3
                                .copyWith(color: Colors.white):Styles.headLineStyle3,),
                          Gap(AppLayout.getHeight(5)),
                          Text(secondText, style: isColor==null? Styles.headLineStyle3
                                .copyWith(color: Colors.white):Styles.headLineStyle4),
                        ],
                      )
                    ],
                  );
  }
}