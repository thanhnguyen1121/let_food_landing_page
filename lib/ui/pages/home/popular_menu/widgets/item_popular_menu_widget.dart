import 'package:flutter/material.dart';
import 'package:flutter_web/domain/entity/product_model.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

class ItemPopularMenuWidget extends StatelessWidget {
  final ProductModel model;

  const ItemPopularMenuWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 371,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: const Offset(2, 5),
              blurRadius: 12)
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: context.colorScheme.tertiaryContainer,
              ),
              padding: const EdgeInsets.only(top: 12),
              child: Image.asset(
                model.url,
                width: 230,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 122,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(120, 20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        model.name,
                        style: context.textTheme.headline6
                            ?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        model.description,
                        style: context.textTheme.bodyText1?.copyWith(
                          color: context.colorScheme.secondary,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.current.product_price(model.price),
                              style: context.textTheme.subtitle2?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            model.isFavorite
                                ? Assets.icons.icUnlike.svg()
                                : Assets.icons.icLike.svg()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
