import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/presentation/main/home/stories_page.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              flexibleSpace: _topHomeAppbar(),
              expandedHeight: 50,
              backgroundColor: AppColor.borderInputColor,
              elevation: 0.5,
            ),
            const SliverToBoxAdapter(
              child: StoriesPage(),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(title: Text("${index}"));
            }, childCount: 1000))
          ],
        ),
      ),
    );
  }

  Widget _topHomeAppbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: AppIcon.icCamera.widget()),
          Align(
              alignment: Alignment.center,
              child: SizedBox(width: 105, child: AppIcon.icInstagram.widget())),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppIcon.icIGTV.widget(),
                const SizedBox(
                  width: 18,
                ),
                AppIcon.icMessenger.widget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
