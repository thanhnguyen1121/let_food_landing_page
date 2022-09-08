import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/pages/home/app_bar/let_food_widget.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';
import 'package:flutter_web/ui/widgets/button/app_icon_button.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.primaryContainer,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 84)
          .copyWith(bottom: 48),
      child: Stack(
        children: [
          Assets.images.imgBgImageFooter.svg(
            width: double.infinity,
            height: 400,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LetFoodWidget(),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        S.current.address,
                        style: context.textTheme.headline6?.copyWith(
                          color: context.colorScheme.secondary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppIconButton(
                            color: Colors.white,
                            icon: Assets.icons.icInstagram.svg(),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          AppIconButton(
                            color: context.colorScheme.primary,
                            icon: Assets.icons.icFacebook.svg(),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          AppIconButton(
                            color: Colors.white,
                            icon: Assets.icons.icTwitter.svg(),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.company,
                        style: context.textTheme.headline6
                            ?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        S.current.about_us,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: context.colorScheme.secondary),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        S.current.career,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: context.colorScheme.secondary),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        S.current.how_it_work_v2,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: context.colorScheme.secondary),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.policy,
                        style: context.textTheme.headline6
                            ?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        S.current.faq,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: context.colorScheme.secondary),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        S.current.privacy,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: context.colorScheme.secondary),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        S.current.shipping,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: context.colorScheme.secondary),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.get_in_touch,
                        style: context.textTheme.headline6
                            ?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        S.current.phone,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: context.colorScheme.secondary),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        S.current.email,
                        style: context.textTheme.bodyText1
                            ?.copyWith(color: context.colorScheme.secondary),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 96,
              ),
              Divider(
                thickness: 1,
                color: context.colorScheme.secondaryContainer.withOpacity(0.5),
                height: 1,
              ),
              const SizedBox(
                height: 44,
              ),
              Text(
                S.current.copy_right,
                style: context.textTheme.bodyText1?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
