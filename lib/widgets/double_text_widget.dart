import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText; 
  final String smallText;
  const AppDoubleTextWidget({super.key, required this.bigText, required  this.smallText});

  @override
  Widget build(BuildContext context) {
    return  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(bigText, style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                       print("You are Tapped"); 
                      },
                      child: Text(smallText, style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                  ],
                );
  }
}