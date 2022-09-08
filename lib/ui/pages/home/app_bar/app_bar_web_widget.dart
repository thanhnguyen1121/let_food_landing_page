import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';
import 'package:flutter_web/ui/widgets/button/app_button.dart';
import 'package:flutter_web/ui/widgets/button/icon_ink_response_button.dart';
import 'package:flutter_web/ui/widgets/icon_with_badge_widget.dart';

import 'header_widget.dart';
import 'let_food_widget.dart';

class AppBarWebWidget extends StatelessWidget {
  final List<String> headerTitleList;
  final TabController tabController;

  const AppBarWebWidget(
      {Key? key, required this.headerTitleList, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("AppBarWebWidget ${MediaQuery.of(context).size.width}");
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 108,
      color: context.colorScheme.primaryContainer,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: (width * 8) / 100,
      ),
      child: Row(
        children: [
          const Expanded(flex: 2, child: LetFoodWidget()),
          Expanded(
            flex: 6,
            child: HeaderWidget(
              titleList: headerTitleList,
              tabController: tabController,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Row(
            children: [
              IconInkResponseButton(
                radius: 30,
                padding: 20,
                onTap: () {},
                child: Assets.icons.icSearch.svg(),
              ),
              IconInkResponseButton(
                radius: 30,
                padding: 20,
                onTap: () {},
                child: IconWithBadgeWidget(
                  icon: Assets.icons.icCart.svg(width: 32, height: 32),
                  count: 10,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              AppButton(
                title: S.current.sign_in,
                icon: Assets.icons.icSign.svg(),
              )
            ],
          )
        ],
      ),
    );
  }
}
