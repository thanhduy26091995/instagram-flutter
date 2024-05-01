import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/app/config/app_text.dart';
import 'package:instagram_flutter/presentation/main/profile/item_stat.dart';
import 'package:instagram_flutter/presentation/widgets/avatar_view.dart';

class ProfileScreenPage extends StatelessWidget {
  const ProfileScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              flexibleSpace: _headerView(),
              expandedHeight: 50,
              elevation: 0,
            ),
            SliverToBoxAdapter(
              child: _profileStatsContainer(),
            )
          ],
        ),
      ),
    );
  }

  Widget _profileStatsContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AvatarView(
                    itemSize: 96,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: StatItem(value: 40, title: "Posts")),
                      Expanded(child: StatItem(value: 834, title: "Followers")),
                      Expanded(child: StatItem(value: 162, title: "Following")),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          AppText.primary(
            "Jacob West",
            fontWeight: FontWeightType.semiBold,
            fontSize: 13,
          ),
          const SizedBox(
            height: 5,
          ),
          AppText.primary(
            "Digital good designer\nEverything is designed.",
            fontSize: 12,
          )
        ],
      ),
    );
  }

  Widget _headerView() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppIcon.icPrivate.widget(),
              const SizedBox(
                width: 5,
              ),
              AppText.primary("jacob_w"),
              const SizedBox(
                width: 5,
              ),
              AppIcon.icAccountList.widget()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [AppIcon.icMenu.widget()],
          )
        ],
      ),
    );
  }
}
