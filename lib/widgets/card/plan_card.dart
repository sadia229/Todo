import 'dart:math';

import 'package:flutter/material.dart';
import 'package:git_test_app/general/utils/config.dart';
import 'package:git_test_app/general/utils/text_style.dart';

import '../../general/utils/colors.dart';

class PlanCard extends StatelessWidget {
  final IconData img;
  final String text;
  final Color color;
  const PlanCard({
    Key? key,
    required this.img,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.2,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            img,
            size: 40,
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
          const SizedBox(height:10),
          Text(
            text,
            style: KTextStyle.title1.copyWith(
              color:Colors.pink
            ),
          ),
        ],
      ),
    );
  }
}
