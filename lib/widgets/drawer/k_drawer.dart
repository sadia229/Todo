
import 'package:flutter/material.dart';
import 'package:git_test_app/general/utils/config.dart';

import '../../general/utils/colors.dart';

class KDrawer extends StatelessWidget {
  const KDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Container(
                  height: context.screenHeight * 0.36,
                  color: KColor.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          width: context.screenWidth,
                          color: KColor.black,
                          alignment: Alignment.topLeft,
                          child: Icon(Icons.close, color: KColor.white),
                        ),
                      ),
                      SizedBox(height: context.screenHeight * 0.05),
                    ],
                  ),
                ),
                SizedBox(height: context.screenHeight * 0.01),
              ],
            ),
          ],
        ),
      ),
    );
  }
}