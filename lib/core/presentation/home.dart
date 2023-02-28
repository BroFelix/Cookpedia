import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookpedia/core/presentation/cookbook_detail.dart';
import 'package:cookpedia/core/presentation/custom_widgets/cookbook_card.dart';
import 'package:cookpedia/core/presentation/search.dart';
import 'package:cookpedia/core/res/color.dart';
import 'package:cookpedia/core/res/style.dart';
import 'package:cookpedia/core/res/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          SearchPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3.0,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_outlined,
              size: 32.0,
              color: _currentIndex == 0 ? AppColor.orange : Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
              size: 32.0,
              color: _currentIndex == 1 ? AppColor.orange : Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 32.0,
              color: _currentIndex == 2 ? AppColor.orange : Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.calendar_month,
              size: 32.0,
              color: _currentIndex == 3 ? AppColor.orange : Colors.black,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.imageUrl, required this.text});
  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) => DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: child,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: AppTextStyle.textStyle1,
          )
        ],
      ),
    );
  }
}

class RecipeListItem extends StatelessWidget {
  const RecipeListItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .47,
      width: size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/chicken.png',
            width: size.width,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 12.0),
          Text(
            'Resep Ayam Kuah Santan Pedas Lezat',
            style: AppTextStyle.textStyle3.copyWith(
              fontSize: 24.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/avatar.png',
                ),
              ),
              const SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nadia Putri',
                    style: AppTextStyle.textStyle1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: AppColor.orange,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '130',
                        style: AppTextStyle.textStyle1.copyWith(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '·',
                        style: AppTextStyle.textStyle1,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '103 Reviews',
                        style: AppTextStyle.textStyle1.copyWith(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  color: AppColor.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _carouselController = CarouselController();
  int _currentSlide = 0;

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: 8.0,
      decoration:
          BoxDecoration(color: isActive ? AppColor.orange : Colors.white.withOpacity(0.4), borderRadius: const BorderRadius.all(Radius.circular(12)), border: Border.all(color: AppColor.orange)),
    );
  }

  List<Widget> _buildPageIndicator(int currentIndex, int numPages) {
    List<Widget> list = [];
    for (int i = 0; i < numPages; i++) {
      list.add(i == currentIndex ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 12.0,
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                    radius: 28,
                  ),
                  const SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hi Naraya',
                        style: AppTextStyle.textStyle2.copyWith(fontSize: 20.0),
                      ),
                      const Text(
                        AppText.whatrucooking,
                        style: AppTextStyle.textStyle1,
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppText.cookbooks,
                    style: AppTextStyle.textStyle3.copyWith(
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    '${_currentSlide + 1}/3',
                    style: AppTextStyle.textStyle1.copyWith(color: AppColor.grey800),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 12.0,
                left: 24.0,
                right: 24.0,
              ),
              width: size.width,
              child: CarouselSlider.builder(
                carouselController: _carouselController,
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentSlide = index;
                    });
                  },
                  padEnds: true,
                  height: size.height * .5,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  enlargeFactor: 0.3,
                  // disableCenter: true,
                  viewportFraction: 0.99,
                ),
                itemBuilder: (
                  BuildContext context,
                  int index,
                  int realIndex,
                ) =>
                    GestureDetector(
                  child: const CookbookCard(),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CookbookPage(),
                        ));
                  },
                ),
                itemCount: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                bottom: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(_currentSlide, 3),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 24.0),
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                AppText.featured,
                style: AppTextStyle.textStyle3.copyWith(
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 24.0,
                bottom: 12.0,
              ),
              padding: const EdgeInsets.only(
                left: 4.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                AppText.featuredSubText,
                style: AppTextStyle.textStyle1.copyWith(
                  color: AppColor.grey800,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            RecipeListItem(size: size),
            RecipeListItem(size: size),
            RecipeListItem(size: size),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  AppText.showAll,
                  style: AppTextStyle.textStyle1.copyWith(
                    color: AppColor.orange,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 24.0,
                bottom: 12.0,
              ),
              padding: const EdgeInsets.only(
                left: 4.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                AppText.category,
                style: AppTextStyle.textStyle3.copyWith(
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: size.height * .12,
              width: size.width,
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 12.0,
                ),
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryItem(
                    imageUrl: 'assets/images/seasonal.png',
                    text: AppText.seasonal,
                  ),
                  CategoryItem(
                    imageUrl: 'assets/images/cakes.png',
                    text: AppText.cakes,
                  ),
                  CategoryItem(
                    imageUrl: 'assets/images/everyday.png',
                    text: AppText.everyday,
                  ),
                  CategoryItem(
                    imageUrl: 'assets/images/drinks.png',
                    text: AppText.drinks,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48.0),
          ],
        ),
      ),
    );
  }
}
