import 'package:flutter/material.dart';
import 'package:moxa_shop/common/c_colors.dart';

class CText extends StatelessWidget
{
  CText(this.text, {
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final double? fontSize; // 设置字号
  final Color? color; // 设置字体颜色
  final FontWeight? fontWeight; // 设置字重
  final int? maxLines;  // 设置文字展示多少行
  final TextOverflow? overflow; // 设置文字超出显示效果

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: fontSize,
        color: color != null ? color : CColors.black,
        fontWeight: fontWeight,
      ),
      maxLines: maxLines == null ? 2 : maxLines,
      overflow: overflow == null ? TextOverflow.ellipsis : overflow,
    );
  }
}