import 'package:cookpedia/core/presentation/search.dart';
import 'package:cookpedia/core/res/color.dart';
import 'package:cookpedia/core/res/style.dart';
import 'package:cookpedia/core/res/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CookbookPage extends StatefulWidget {
  const CookbookPage({super.key});

  @override
  State<CookbookPage> createState() => _CookbookPageState();
}

class _CookbookPageState extends State<CookbookPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .35,
              width: size.width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    'assets/images/burger.jpg',
                    height: size.height * .25,
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    left: 24.0,
                    top: 48.0,
                    child: MaterialButton(
                      height: size.height * .01,
                      minWidth: size.width * .01,
                      shape: const CircleBorder(
                        side: BorderSide.none,
                      ),
                      onPressed: () {},
                      padding: const EdgeInsets.only(
                        left: 18,
                        top: 12,
                        right: 8,
                        bottom: 12.0,
                      ),
                      color: Colors.white,
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 24.0,
                    top: 48.0,
                    child: MaterialButton(
                      padding: const EdgeInsets.all(12.0),
                      height: size.height * .01,
                      minWidth: size.width * .01,
                      shape: const CircleBorder(
                        side: BorderSide.none,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12.0,
                    child: SizedBox(
                      height: size.height * .17,
                      width: size.width * .9,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                'Menu ayam spesial',
                                style: AppTextStyle.textStyle3.copyWith(
                                  fontSize: 24.0,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                'Keep it easy with these simple but delicious recipes.',
                                style: AppTextStyle.textStyle1.copyWith(color: AppColor.grey800),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: '4.8',
                                          style: AppTextStyle.textStyle1,
                                        ),
                                        const TextSpan(text: ' '),
                                        TextSpan(
                                          text: 'Ratings',
                                          style: AppTextStyle.textStyle1.copyWith(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 12.0,
                                      right: 12.0,
                                    ),
                                    height: 24.0,
                                    child: const VerticalDivider(
                                      width: 4.0,
                                      thickness: 2.0,
                                      color: AppColor.grey400,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: '7',
                                          style: AppTextStyle.textStyle1,
                                        ),
                                        const TextSpan(text: ' '),
                                        TextSpan(
                                          text: 'Recipes',
                                          style: AppTextStyle.textStyle1.copyWith(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.search,
                    color: AppColor.grey800,
                  ),
                  filled: true,
                  fillColor: AppColor.grey100,
                  hintText: 'Recipe Title, Ingredients',
                  hintStyle: AppTextStyle.textStyle1.copyWith(
                    color: AppColor.grey800,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 24.0,
                top: 24.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular Recipe',
                style: AppTextStyle.textStyle3.copyWith(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(24.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: const BorderSide(
                    color: AppColor.grey400,
                    width: 1.0,
                  ),
                ),
                margin: EdgeInsets.zero,
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kari Daging Sapi',
                            style: AppTextStyle.textStyle1.copyWith(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.favorite_border_outlined,
                                size: 18,
                                color: AppColor.red,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                '4.9',
                                style: AppTextStyle.textStyle1.copyWith(
                                  fontSize: 14.0,
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              const SizedBox(
                                height: 12.0,
                                child: VerticalDivider(
                                  width: 4.0,
                                  thickness: 1.0,
                                  color: AppColor.grey800,
                                ),
                              ),
                              const SizedBox(width: 12.0),
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
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 24.0,
                top: 24.0,
                right: 24.0,
              ),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Recipe (7)',
                    style: AppTextStyle.textStyle3.copyWith(
                      fontSize: 20.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort_by_alpha,
                      color: AppColor.grey600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .1 * 7,
              width: size.width,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 0.0),
                itemCount: 7,
                itemBuilder: (_, __) => const RecipeListViewItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
