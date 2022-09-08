import 'package:flutter/material.dart';
import 'package:flutter_web/domain/entity/product_model.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/ui/pages/home/popular_menu/widgets/item_popular_menu_widget.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';
import 'package:flutter_web/ui/widgets/button/app_button.dart';

import '../../../../generated/l10n.dart';

class PopularMenuWidget extends StatelessWidget {
  const PopularMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          Text(
            S.current.our_menu,
            style: context.textTheme.subtitle2?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            S.current.our_menu_popular,
            style: context.textTheme.headline4?.copyWith(
              color: context.colorScheme.secondaryContainer,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            S.current.our_menu_content,
            textAlign: TextAlign.center,
            style: context.textTheme.subtitle2?.copyWith(
              color: context.colorScheme.secondary,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ItemPopularMenuWidget(
                model: ProductModel(
                  name: "Salad Tahu",
                  description: "lorem ipsum",
                  price: 20,
                  isFavorite: true,
                  url: Assets.images.imgDemoPopular1.path,
                ),
              ),
              ItemPopularMenuWidget(
                model: ProductModel(
                  name: "Salad Tahu",
                  description: "lorem ipsum",
                  price: 20,
                  isFavorite: true,
                  url: Assets.images.imgDemoPopular2.path,
                ),
              ),
              ItemPopularMenuWidget(
                model: ProductModel(
                  name: "Salad Tahu",
                  description: "lorem ipsum",
                  price: 20,
                  isFavorite: false,
                  url: Assets.images.imgDemoPopular3.path,
                ),
              ),
              ItemPopularMenuWidget(
                model: ProductModel(
                  name: "Salad Tahu",
                  description: "lorem ipsum",
                  price: 20,
                  isFavorite: false,
                  url: Assets.images.imgDemoPopular4.path,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          AppButton(title: S.current.more_menu)
        ],
      ),
    );
  }
}
