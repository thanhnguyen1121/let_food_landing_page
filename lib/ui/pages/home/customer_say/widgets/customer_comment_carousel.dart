import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web/domain/entity/customer_say_model.dart';
import 'package:flutter_web/ui/pages/home/customer_say/widgets/indicator_widget.dart';

import 'customer_comment_widget.dart';

class CustomerCommentCarousel extends StatelessWidget {
  final ScrollController lvController = ScrollController();
  final StreamController<int> indicatorController =
      StreamController.broadcast();
  final List<CustomerSayModel> customerSayModelList;
  final Duration periodic;
  Timer? timer;

  CustomerCommentCarousel({
    Key? key,
    required this.customerSayModelList,
    required this.periodic,
  }) : super(key: key) {
    lvController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: SingleChildScrollView(
            controller: lvController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: customerSayModelList
                  .asMap()
                  .entries
                  .map(
                    (e) => CustomerCommentWidget(
                      model: e.value,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        IndicatorWidget(
          indicatorIndicator: indicatorController,
          count: customerSayModelList.length,
        ),
      ],
    );
  }
}
