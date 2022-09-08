import 'package:flutter/material.dart';
import 'package:flutter_web/domain/entity/customer_say_model.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/ui/pages/home/customer_say/widgets/photo_widget.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

import 'widgets/customer_comment_carousel.dart';

class CustomerSayWidget extends StatelessWidget {
  final List<CustomerSayModel> models = [
    CustomerSayModel(
        customerAvatarUrl: Assets.images.imgUserOne.path,
        customerComment:
            "“Lorem ipsum dolor sit amet, consectetur \nadipiscing elit ut aliquam, purus sit amet luctus \nvenenatis.”",
        customerName: "Naura Silvana",
        customerRate: 4.5),
    CustomerSayModel(
        customerAvatarUrl: Assets.images.imgUserOne.path,
        customerComment:
            "“Lorem ipsum dolor sit amet, consectetur \nadipiscing elit ut aliquam, purus sit amet luctus \nvenenatis.”",
        customerName: "Naura Silvana",
        customerRate: 4.5),
    CustomerSayModel(
        customerAvatarUrl: Assets.images.imgUserOne.path,
        customerComment:
            "“Lorem ipsum dolor sit amet, consectetur \nadipiscing elit ut aliquam, purus sit amet luctus \nvenenatis.”",
        customerName: "Naura Silvana",
        customerRate: 4.5)
  ];

  CustomerSayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 48, bottom: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 200,
          ),
          const PhotoWidget(),
          const SizedBox(
            width: 100,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Text(
                  S.current.what_the_say,
                  style: context.textTheme.subtitle2
                      ?.copyWith(color: context.colorScheme.primary),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  S.current.what_the_say_content,
                  style: context.textTheme.headline4
                      ?.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomerCommentCarousel(
                  customerSayModelList: models,
                  periodic: const Duration(seconds: 5),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
