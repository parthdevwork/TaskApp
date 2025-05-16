import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FxSvgIcon extends StatelessWidget {
  final BoxFit fit;
  final String icon;
  final Color? color;
  final double? size;

  const FxSvgIcon(
    this.icon, {
    super.key,
    this.color,
    this.size,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      fit: fit,
      color: color,
      width: size ?? 22,
      height: size ?? 22,
    );
  }
}
