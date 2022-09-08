import 'package:flutter/material.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/pages/home/customer_say/customer_say_widget.dart';
import 'package:flutter_web/ui/pages/home/discount/discount_widget.dart';
import 'package:flutter_web/ui/pages/home/popular_menu/popular_menu_widget.dart';
import 'package:flutter_web/ui/widgets/base/responsive_widget.dart';

import 'app_bar/app_bar_web_widget.dart';
import 'banner/banner_web_widget.dart';
import 'footer/footer_widget.dart';
import 'how_it_work/how_it_work_web_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  static const tag = 'HomePage';
  final List<String> headerTitleList = [
    S.current.home,
    S.current.menu,
    S.current.how_it_work,
    S.current.about,
    S.current.contact,
  ];
  late final TabController tabController =
      TabController(length: headerTitleList.length, vsync: this);

  @override
  Widget build(BuildContext context) {
    /* return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWebWidget(
              tabController: tabController,
              headerTitleList: headerTitleList,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text("Home page"),
            ),
          ],
        ),
      ),
    );*/
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveWidget(
        webUIRender: () {
          return Column(
            children: [
              AppBarWebWidget(
                tabController: tabController,
                headerTitleList: headerTitleList,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const BannerWebWidget(),
                      const HowItWorkWebWidget(),
                      const PopularMenuWidget(),
                      CustomerSayWidget(),
                      const DiscountWidget(),
                      const FooterWidget(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        tabletUIRender: () {
          return Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: const Text("tableUIRender"),
          );
        },
        mobileUIRender: () {
          return Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: const Text("mobileUIRender"),
          );
        },
      ),
    );
  }
}
