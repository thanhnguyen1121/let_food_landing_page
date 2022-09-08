import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 431,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(10),
            ),
            child: Image.asset(
              Assets.images.imgCustomerSay1.path,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Assets.images.imgCustomerSay3
                      .image(width: double.infinity),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                  ),
                  child: Assets.images.imgCustomerSay2
                      .image(width: double.infinity),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
