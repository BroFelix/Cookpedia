import 'package:cookpedia/core/res/color.dart';
import 'package:cookpedia/core/res/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CookbookCard extends StatelessWidget {
  const CookbookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Card(
      margin: const EdgeInsets.only(bottom: 8.0),
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/cookbook.png',
            fit: BoxFit.fitWidth,
            height: mediaQuery.size.height * .4,
            width: mediaQuery.size.width,
          ),
          Positioned(
            bottom: 0.0,
            left: 32.0,
            right: 32.0,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: mediaQuery.size.height * .24,
              width: mediaQuery.size.width * .5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 12.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColor.orange,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/hat.svg',
                      height: 24.0,
                      width: 24.0,
                    ),
                  ),
                  Text(
                    'Buku resep spesial antara',
                    style: AppTextStyle.textStyle3.copyWith(
                      fontSize: 24.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Keep it easy with these simple but delicious recipes.',
                    style: AppTextStyle.textStyle1.copyWith(
                      color: AppColor.grey800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 14.0),
                  SizedBox(
                    height: 28.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1.3k Likes',
                          style: AppTextStyle.textStyle1.copyWith(
                            fontSize: 16.0,
                          ),
                        ),
                        const VerticalDivider(
                          width: 24.0,
                          thickness: 1.5,
                          color: AppColor.grey400,
                        ),
                        Text(
                          '7 Recipes',
                          style: AppTextStyle.textStyle1.copyWith(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
