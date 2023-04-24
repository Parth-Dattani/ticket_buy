import 'package:flutter/material.dart';

import '../constant/constant.dart';


class CommonLoader extends StatelessWidget {
  final Widget body;
  final bool isLoad;
  const CommonLoader({Key? key, required this.body, required this.isLoad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        body,
        isLoad ? const Opacity(
            opacity: 0.8,
            child: ModalBarrier(dismissible: false, color: ColorsConfig.colorLightGray))
            : const SizedBox(),

        isLoad ? const Center(
          child: CircularProgressIndicator(
            backgroundColor: ColorsConfig.colorGrey,
            strokeWidth: 5,
            valueColor: AlwaysStoppedAnimation(ColorsConfig.colorBlue, ),
          ),
        ) :
        Container(),
      ],
    );
  }
}
