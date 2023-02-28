import 'package:cookpedia/core/res/color.dart';
import 'package:cookpedia/core/res/style.dart';
import 'package:cookpedia/core/res/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const SizedBox(),
        elevation: 1.0,
        title: Text(
          'Search Recipe',
          style: AppTextStyle.textStyle3.copyWith(fontSize: 20.0),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: TextField(
              scribbleEnabled: true,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: AppColor.grey100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Recipe Title, Ingredient',
                hintStyle: AppTextStyle.textStyle1.copyWith(
                  color: AppColor.grey800,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          Visibility(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                  ),
                  child: Text(
                    'Recent Search',
                    style: AppTextStyle.textStyle3.copyWith(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: size.height * .2,
                  width: size.width,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return index == 2
                          ? Column(
                              children: [
                                ListTile(
                                  contentPadding: const EdgeInsets.only(
                                    left: 24.0,
                                  ),
                                  title: const Text('Sayur', style: AppTextStyle.textStyle1),
                                  trailing: IconButton(
                                    icon: const Icon(
                                      Icons.close,
                                      size: 28.0,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                const Divider(
                                  height: 4.0,
                                  thickness: 2.0,
                                ),
                              ],
                            )
                          : ListTile(
                              contentPadding: const EdgeInsets.only(
                                left: 24.0,
                              ),
                              title: const Text('Sayur', style: AppTextStyle.textStyle1),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  size: 28.0,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            );
                    },
                    separatorBuilder: (BuildContext context, int index) => const Divider(
                      height: 4.0,
                      thickness: 2.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    left: 24.0,
                    bottom: 24.0,
                  ),
                  child: Text(
                    'Latest Seen',
                    style: AppTextStyle.textStyle3.copyWith(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .3,
                  width: size.width,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return const RecipeListViewItem();
                    },
                    separatorBuilder: (context, index) => const Divider(
                      height: 4.0,
                      thickness: 2.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeListViewItem extends StatelessWidget {
  const RecipeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 24.0,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/chicken.png',
            height: 72.0,
            width: 72.0,
            fit: BoxFit.cover,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) => Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: child,
            ),
          ),
          const SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Resep Ayam Kuah Santan Pedas Lezat',
                style: AppTextStyle.textStyle1,
                overflow: TextOverflow.visible,
                maxLines: 3,
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.timer),
                  const SizedBox(width: 4.0),
                  Text(
                    '40 min',
                    style: AppTextStyle.textStyle1.copyWith(
                      color: AppColor.grey800,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(width: 24.0),
                  const Icon(Icons.food_bank),
                  const SizedBox(width: 4.0),
                  Text(
                    'Easy',
                    style: AppTextStyle.textStyle1.copyWith(
                      color: AppColor.grey800,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
