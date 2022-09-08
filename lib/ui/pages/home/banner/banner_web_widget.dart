import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';
import 'package:flutter_web/ui/widgets/button/app_button.dart';

class BannerWebWidget extends StatelessWidget {
  const BannerWebWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Assets.images.imgBannerShapes.svg(
          fit: BoxFit.fitWidth,
        ),
        Positioned.fill(
          right: 130,
          child: Align(
            alignment: Alignment.centerRight,
            child: Assets.images.imgBanner.image(
              fit: BoxFit.fitWidth,
              width: 500,
            ),
          ),
        ),
        Positioned.fill(
          left: (width * 8) / 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: S.current.banner_title,
                    style: context.textTheme.headline3
                        ?.copyWith(color: Colors.black),
                  ),
                  TextSpan(
                    text: " ${S.current.food}",
                    style: context.textTheme.headline3
                        ?.copyWith(color: context.colorScheme.primary),
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.banner_content,
                style: context.textTheme.bodyText1?.copyWith(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 24,
              ),
              AppButton(title: S.current.get_started)
            ],
          ),
        )
      ],
    );
  }
}
