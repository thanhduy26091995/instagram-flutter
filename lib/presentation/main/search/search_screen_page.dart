import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/app/config/app_image.dart';
import 'package:instagram_flutter/presentation/main/search/genre_item.dart';

import '../../../app/config/app_color.dart';

class SearchScreenPage extends StatelessWidget {
  const SearchScreenPage({super.key});

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
              flexibleSpace: Column(
                children: [_headerView()],
              ),
              expandedHeight: 50,
              backgroundColor: AppColor.borderInputColor,
              elevation: 0.5,
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return const GenreItem(isShowIcon: true);
                  }),
                ),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 10)),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns in the grid
                crossAxisSpacing: 1.0, // Horizontal space between cells
                mainAxisSpacing: 1.0, // Vertical space between cells
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return AppImage.imageCover.widget(fit: BoxFit.cover);
                },
                childCount: 100, // Number of items in the grid
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerView() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
      child: SizedBox(
        width: double.maxFinite,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    hintText: "Search",
                    prefixIconColor: const Color(0xFF767680),
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: const Color(0xFF767680).withOpacity(0.12),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            AppIcon.icScanIcon.widget()
          ],
        ),
      ),
    );
  }
}
