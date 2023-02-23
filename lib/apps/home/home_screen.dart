import 'package:git_test_app/general/utils/constants.dart';
import 'package:git_test_app/widgets/card/plan_card.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_test_app/general/utils/config.dart';
import 'package:git_test_app/general/utils/text_style.dart';
import '../../general/utils/colors.dart';
import '../../widgets/appbar/k_appbar.dart';
import 'components/banner_scetion.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();

    return Scaffold(
      backgroundColor: KColor.header,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: KAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 12.0),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY)
                        .format(now),
                    style: KTextStyle.headline3.copyWith(color: Colors.white),
                  ),
                  Text(
                    DateFormat('hh : mm a')
                        .format(DateTime.parse(now.toString())),
                    style: KTextStyle.title3.copyWith(color: KColor.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: context.screenHeight,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  const BannerSection(),
                  const SizedBox(height: 20),
                  Text("What's Your main goal?", style: KTextStyle.headline1),
                  SizedBox(height: context.screenHeight * 0.035),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 25.0,
                      childAspectRatio: 3 / 2,
                    ),
                    itemCount: home.length,
                    itemBuilder: (context, index) {
                      return PlanCard(
                        img: homeIcon[index],
                        text: home[index],
                        color: homeColor[index],
                        tap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => menuPages[index],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
