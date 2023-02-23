import 'package:flutter/material.dart';
import 'package:git_test_app/general/utils/config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../general/utils/colors.dart';
import '../../../general/utils/constants.dart';
import '../../../general/utils/text_style.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({Key? key}) : super(key: key);

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection>
    with TickerProviderStateMixin {
  late final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: context.screenWidth,
          height: context.screenHeight * 0.18,
          child: PageView.builder(
            onPageChanged: (e) {
              setState(() => currentIndex = e);
            },
            controller: _pageController,
            itemCount: bannerImg.length,
            itemBuilder: (context, itemIndex) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(right: 10),
                width: context.screenWidth,
                height: context.screenHeight * 0.3,
                decoration: BoxDecoration(
                  color: bannerColor[itemIndex],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        bannerTagline[itemIndex],
                        style:
                            KTextStyle.headline3.copyWith(color: KColor.white),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(bannerImg[itemIndex], height: 85)
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        SmoothPageIndicator(
            controller: _pageController, // PageController
            count: 3,
            effect: ExpandingDotsEffect(
              dotColor: KColor.secondary,
              activeDotColor: Colors.amber,
              dotHeight: 10,
              dotWidth: 10,
            ), // your preferred effect
            onDotClicked: (index) => setState(() => currentIndex = index)),
      ],
    );
  }
}
