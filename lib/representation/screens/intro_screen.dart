import 'dart:async';

import 'package:apptruyen/helpers/image_helper.dart';
import 'package:apptruyen/representation/screens/main_app.dart';
import 'package:apptruyen/representation/widgets/buttom_widget.dart';
import 'package:apptruyen/values/app_assets.dart';
import 'package:apptruyen/values/app_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static const routeName = 'intro_screen';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  final StreamController<int> _streamController =
      StreamController<int>.broadcast();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      _streamController.add(_pageController.page!.toInt());
    });
  }

  Widget _buildIntroScreen(String img, String title, String description,
      AlignmentGeometry alignment) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: alignment,
          child: ImageHelper.loadFromAsset(
            img,
            width: 300,
            height: 375,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyles.defaultStyle.bold,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                description,
                style: AppStyles.defaultStyle,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _pageController,
          children: [
            _buildIntroScreen(AppAsset.banner1, 'Title 1', 'description 1',
                Alignment.centerRight),
            _buildIntroScreen(
                AppAsset.banner2, 'Title 2', 'description 2', Alignment.center),
            _buildIntroScreen(AppAsset.banner3, 'Title 3', 'description 3',
                Alignment.centerLeft),
          ],
        ),
        Positioned(
            left: 24,
            right: 24,
            bottom: 48,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotWidth: 5,
                      dotHeight: 5,
                      activeDotColor: Colors.orange,
                    ),
                  ),
                ),
                StreamBuilder<int>(
                  initialData: 0,
                  stream: _streamController.stream,
                  builder: (context, snapshot) {
                    return Expanded(
                        flex: 4,
                        child: ButtomWidget(
                            title: snapshot.data != 2 ? 'Next' : 'Get Started',
                            onTap: () {
                              _pageController.page != 2
                              ? _pageController.nextPage(
                                  duration: const Duration(milliseconds: 2),
                                  curve: Curves.easeIn
                              )
                              : Navigator.of(context).pushNamed(MainApp.routeName);
                            },
                        )
                    );
                  },
                )
              ],
            ))
      ],
    ));
  }
}
