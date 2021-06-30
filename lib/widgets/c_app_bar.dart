import 'package:flutter/material.dart';
import 'package:moxa_shop/widgets/c_text.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget
{
  CAppBar({
    this.title,
    this.titleText="",
    this.leading,
    this.actions,
    this.backgroundColor,
    this.centerTitle,
    this.elevation
  });

  final Widget? title;
  final String titleText;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool? centerTitle;
  final double? elevation;

  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ? title : CText(titleText, color: Colors.white, fontSize: 16.0,),
      leading:leading,
      actions: actions,
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      elevation: elevation,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
}