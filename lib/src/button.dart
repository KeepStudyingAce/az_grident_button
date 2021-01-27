import 'package:flutter/material.dart';

class AZGridentButton extends StatelessWidget {
  const AZGridentButton({
    Key key,
    @required this.colors,
    @required this.buttonTitle,
    this.disableColor,
    this.width,
    this.height = 50,
    this.borderRadius = 2,
    this.titleStyle,
    this.onClick,
    this.margin = EdgeInsets.zero,
    this.enable = true,
    this.child,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
  }) : super(key: key);

  final List<Color> colors;
  final Color disableColor;
  final double width;
  final double height;
  final EdgeInsetsGeometry margin;
  final bool enable;
  final double borderRadius;
  final Function onClick;
  final String buttonTitle;
  final TextStyle titleStyle;
  final Widget child;
  final Alignment begin;
  final Alignment end;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (enable) {
            this.onClick?.call();
          }
        },
        child: Stack(children: [
          Container(
            width: this.width,
            height: this.height,
            margin: margin,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: begin,
                  end: end,
                  colors: colors,
                ),
                borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
            child: this.child != null
                ? this.child
                : Text(
                    this.buttonTitle,
                    style: this.titleStyle != null
                        ? this.titleStyle
                        : TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                  ),
          ),
          !enable
              ? Positioned.fill(
                  child: Container(
                  color: disableColor,
                ))
              : SizedBox()
        ]));
  }
}
