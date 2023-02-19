import 'package:flutter/material.dart';
import 'package:git_test_app/general/utils/config.dart';
import 'package:text_divider/text_divider.dart';

class Or extends StatelessWidget {
  const Or({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: context.screenHeight*0.08),
      child: TextDivider.horizontal(
        text: const Text('or'),
        color: Colors.black.withOpacity(0.4),
        thickness: 1,
      ),
    );
  }
}
