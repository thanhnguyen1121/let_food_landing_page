import 'package:flutter/material.dart';
import 'package:flutter_web/domain/entity/customer_say_model.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/ui/utils/context_extensions.dart';

class CustomerCommentWidget extends StatelessWidget {
  final CustomerSayModel model;

  const CustomerCommentWidget({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      margin: const EdgeInsets.only(right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: Image.asset(
                  model.customerAvatarUrl,
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.customerName,
                    style: context.textTheme.headline6
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Assets.icons.imgStart.svg(),
                      Assets.icons.imgStart.svg(),
                      Assets.icons.imgStart.svg(),
                      Assets.icons.imgStart.svg(),
                      Assets.icons.imgPartOfStart.svg(),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            model.customerComment,
            style: context.textTheme.bodyText1?.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
