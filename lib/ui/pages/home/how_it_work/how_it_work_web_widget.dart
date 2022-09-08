import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

import 'widgets/item_how_it_work_widget.dart';

class HowItWorkWebWidget extends StatelessWidget {
  const HowItWorkWebWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          Text(
            S.current.how_it_work,
            style: context.textTheme.subtitle2?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            S.current.what_we_serve,
            style: context.textTheme.headline4?.copyWith(
              color: context.colorScheme.secondaryContainer,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            S.current.product_quality,
            textAlign: TextAlign.center,
            style: context.textTheme.subtitle2?.copyWith(
              color: context.colorScheme.secondary,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemHowItWorkWidget(
                icon: Assets.images.imgEasyToOrder.image(width: 180),
                title: S.current.easy_to_order_title,
                content: S.current.easy_to_order_content,
              ),
              ItemHowItWorkWidget(
                icon: Assets.images.imgFastestDelivery.image(width: 180),
                title: S.current.fastest_delivery_title,
                content: S.current.fastest_delivery_content,
              ),
              ItemHowItWorkWidget(
                icon: Assets.images.imgBestQuality.image(width: 180),
                title: S.current.best_quality_title,
                content: S.current.best_quality_content,
              ),
            ],
          )
        ],
      ),
    );
  }
}
