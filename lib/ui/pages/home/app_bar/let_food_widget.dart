import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

class LetFoodWidget extends StatelessWidget {
  const LetFoodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          S.current.let_food,
          style: context.textTheme.headline5
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 4,
        ),
        Assets.icons.icFood.svg()
      ],
    );
  }
}
