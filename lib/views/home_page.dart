import 'package:flutter/material.dart';
import '../utils/components/following.dart';
import '../utils/components/for_you.dart';
import '../utils/components/home_page_tabbar.dart';
import 'user_account_page.dart';

class TikTok extends StatefulWidget {
  const TikTok({super.key});

  @override
  State<TikTok> createState() => _TikTokState();
}

class _TikTokState extends State<TikTok> with TickerProviderStateMixin {
  late final TabController _tabController;
  late final TabController _subController;
  final PageController _forYouPageController = PageController();
  final PageController _followingPageController = PageController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
    _subController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: TabBarView(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  // following page
                  Following(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UserAccountPage(),
                        ),
                      );
                      print("temiloluwa");
                    },
                    controller: _followingPageController,
                  ),
                  // for you page
                  ForYouSection(
                      controller: _subController,
                      pageController: _forYouPageController)
                ],
              ),
            ),
            // the tab
            _subController.index == 1
                ? Container()
                : HomePageTabBar(tabController: _tabController),
          ],
        ),
      ),
    );
  }
}

// class TikTokStyleTabIndicator extends Decoration {
//   final double indicatorHeight;
//   final Color indicatorColor;
//   final double indicatorRadius;

//   const TikTokStyleTabIndicator({
//     required this.indicatorColor,
//     required this.indicatorHeight,
//     required this.indicatorRadius,
//   });

//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
//     return TikTokStylePainer(
//       indicatorHeight: indicatorHeight,
//       indicatorColor: indicatorColor,
//       indicatorRadius: indicatorRadius,
//     );
//   }
// }

// class TikTokStylePainer extends BoxPainter {
//   final double indicatorHeight;
//   final Color indicatorColor;
//   final double indicatorRadius;

//   TikTokStylePainer({
//     required this.indicatorHeight,
//     required this.indicatorColor,
//     required this.indicatorRadius,
//   });

//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     final rect =
//         Offset(offset.dx, configuration.size!.height - indicatorHeight) &
//             Size(configuration.size!.width, indicatorHeight);
//     final paint = Paint()
//       ..color = indicatorColor
//       ..style = PaintingStyle.fill;
//     final path = Path()
//       ..lineTo(0, -indicatorRadius)
//       ..quadraticBezierTo(0, 0, indicatorRadius, 0)
//       ..lineTo(rect.width - indicatorRadius, 0)
//       ..quadraticBezierTo(rect.width, 0, rect.width, indicatorRadius)
//       ..lineTo(rect.width, rect.height)
//       ..lineTo(0, rect.height)
//       ..close();

//     canvas.drawPath(path.shift(offset), paint);
//   }
// }
