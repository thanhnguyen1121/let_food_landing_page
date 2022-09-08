import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';
import 'package:flutter_web/ui/widgets/button/app_button.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 80)
          .copyWith(top: 0),
      height: 332,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Assets.images.imgFooterDiscount.image(
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.71),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.current.discount_content,
                      textAlign: TextAlign.center,
                      style: context.textTheme.headline6?.copyWith(),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    AppButton(title: S.current.sign_up)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
