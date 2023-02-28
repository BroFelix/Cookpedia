import 'package:cookpedia/core/presentation/auth.dart';
import 'package:cookpedia/core/presentation/home.dart';
import 'package:cookpedia/core/res/color.dart';
import 'package:cookpedia/core/res/style.dart';
import 'package:cookpedia/core/res/text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final int _numPages = 3;
  Duration pageTurnDuration = const Duration(milliseconds: 500);
  Curve pageTurnCurve = Curves.easeIn;

  @override
  void activate() {
    super.activate();
  }

  @override
  void reassemble() {
    super.reassemble();
  }

  @override
  void initState() {
    _pageController.addListener(_listener);
    super.initState();
  }

  void _listener() {
    if (_pageController.position.userScrollDirection == ScrollDirection.reverse && _currentPage == _numPages - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthPage(),
        ),
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant SplashPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  void _goForward() => _pageController.nextPage(
        duration: pageTurnDuration,
        curve: pageTurnCurve,
      );

  void _goBack() => _pageController.previousPage(
        duration: pageTurnDuration,
        curve: pageTurnCurve,
      );

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            allowImplicitScrolling: true,
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            children: [
              firstPage(size),
              secondPage(size),
              thirdPage(size),
            ],
          ),
          if (_currentPage < 2)
            Positioned(
              top: 48,
              right: 16,
              child: MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    _pageController.jumpToPage(2);
                  });
                },
                child: Text(
                  AppText.skip,
                  style: AppTextStyle.textStyle1.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                // Page forwards
                if (kDebugMode) {
                  print('Move page forwards');
                }
                // if (_currentPage == _numPages - 1) {
                // Navigator.pushReplacement(
                // context,
                // MaterialPageRoute(builder: (context) => const AuthPage()),
                // );
                // }
                _goForward();
              } else if (details.primaryVelocity! > 0) {
                // Page backwards
                if (kDebugMode) {
                  print('Move page backwards');
                }
                _goBack();
              }
            },
            child: CardWidget(
              title: AppText.splashTitle3,
              description: AppText.splashDescription3,
              size: size,
              currentPage: _currentPage,
              pageNum: _numPages,
            ),
          ),
        ],
      ),
    );
  }

  Widget thirdPage(Size size) => SizedBox(
        height: size.height,
        width: size.width,
        child: Image.asset(
          'assets/images/splash3.jpg',
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.multiply,
          color: Colors.black.withOpacity(0.3),
        ),
      );

  Widget secondPage(Size size) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Image.asset(
        'assets/images/splash2.jpg',
        fit: BoxFit.cover,
        colorBlendMode: BlendMode.multiply,
        color: Colors.black.withOpacity(0.3),
      ),
    );
  }

  Widget firstPage(Size size) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Image.asset(
        'assets/images/splash1.jpg',
        colorBlendMode: BlendMode.multiply,
        color: Colors.black.withOpacity(0.3),
        fit: BoxFit.cover,
      ),
    );
  }
}

Widget _indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 150),
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    height: 8.0,
    width: 8.0,
    decoration: BoxDecoration(color: isActive ? AppColor.orange : Colors.white.withOpacity(0.4), borderRadius: const BorderRadius.all(Radius.circular(12)), border: Border.all(color: AppColor.orange)),
  );
}

List<Widget> _buildPageIndicator(int currentIndex, int numPages) {
  List<Widget> list = [];
  for (int i = 0; i < numPages; i++) {
    list.add(i == currentIndex ? _indicator(true) : _indicator(false));
  }
  return list;
}

class CardWidget extends StatelessWidget {
  final Size size;
  final int currentPage;
  final int pageNum;
  final String title;
  final String description;
  const CardWidget({
    super.key,
    required this.size,
    required this.currentPage,
    required this.pageNum,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .5,
      width: size.width,
      child: Card(
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const IconWidget(),
            Text(
              title.toUpperCase(),
              style: AppTextStyle.textStyle2,
            ),
            Text(
              description,
              style: AppTextStyle.textStyle1,
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 64.0,
                bottom: 64.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(currentPage, pageNum),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 32.0,
        bottom: 24.0,
      ),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColor.grey400,
        ),
      ),
      child: SvgPicture.asset(
        'assets/images/hat.svg',
        height: 32,
        width: 32,
      ),
    );
  }
}
