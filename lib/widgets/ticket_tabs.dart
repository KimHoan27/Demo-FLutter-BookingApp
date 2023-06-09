import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/app_lauout.dart';

class AppTicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
            child: Container(
            padding: const EdgeInsets.all(3.5),
             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                  color: const Color(0xfff4f6fd),
           ),
            child: Row(
              children: [
                /*
                airline tickets
                 */
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)),),
                  color:  Colors.white,
                   ),
                  child: Center(child: Text(firstTab),),
                ),
                /*
                hotels
                 */
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)),),
                  color:  Colors.transparent,
                   ),
                  child: Center(child: Text(secondTab),),
                )
              ],
            ),
          ),
        );
  }
}