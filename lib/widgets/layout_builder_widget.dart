import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilder({Key? key, required this.sections, this.isColor, this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext context, BoxConstraints constraints) {
              return Flex(
               direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: List.generate((constraints.constrainWidth()/sections).floor(), (index) => SizedBox(
                width: width, height: AppLayout.getHeight(1),
                child: DecoratedBox(
                decoration: BoxDecoration(
                color: isColor == null? Colors.white : Colors.grey.shade300),),
              ),
              ),
              );
            },
                          
      );
  }
}