import 'package:flutter/material.dart';

import '../constant/constant.dart';


class CommonButton extends StatelessWidget {
  final String? name;
  final Color? color;
  final String? image;
  final double? scale;
  final Color? iconColor;
  final TextStyle? textStyle;
  final double? minWidth;
  final VoidCallback? onPress;
  final double? borderRadius;
  final bool? border;
  final EdgeInsetsGeometry? padding;
  final AssetImage? icon;
  final double? height;
  final double? width;

  const CommonButton(
      {Key? key,
      this.name,
      this.color,
        this.image,
        this.scale,
      this.textStyle,
      this.minWidth = 100,
      this.onPress,
      this.borderRadius = 0.0,
      this.border = true,
      this.padding,
      this.icon,
      this.iconColor, this.height, this.width,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: color,
      elevation: 0,
      minWidth: minWidth,
      padding: padding ?? EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: border!
            ? const BorderSide(color: ColorsConfig.colorBlack)
            : BorderSide.none,
        borderRadius: BorderRadius.circular(borderRadius!),
      ),
      child:
          Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          image != null ? Image.asset(image!, height: height, width: width, scale: scale,) : Container(),
          image != null ?   const SizedBox(width: 10.0,) : const SizedBox(width: 0),
          name != null ? Text(
            name.toString(),
            style: textStyle,
            //textAlign: TextAlign.center
          ) : Container(),

        ],
      ),
    );
  }
}
