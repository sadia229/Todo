import 'dart:math';

import 'package:flutter/material.dart';
import 'package:git_test_app/general/utils/config.dart';
import 'package:git_test_app/general/utils/text_style.dart';

class PlanCard extends StatelessWidget {
  final IconData img;
  final String text;
  final Color color;
  final VoidCallback tap;
  const PlanCard({
    Key? key,
    required this.img,
    required this.text,
    required this.color,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
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
      ),
    );
  }
}
