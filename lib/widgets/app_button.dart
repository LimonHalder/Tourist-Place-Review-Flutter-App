import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_place_smart_ui/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
final Color color;
final Color backgroundcolor;
final Color borderColor;
double size;
String? text;
IconData? icon;
bool? isIcon;

   AppButtons({Key? key,
     this.isIcon=false,
     this.icon,
     this.text="hi",
     required this.size,
     required this.color,
     required this.backgroundcolor,
     required this.borderColor

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(10),
        color: backgroundcolor,
      ),
    child: Center(
        child:isIcon==false? AppText(text: text!,color: color,):Icon(icon)),
    );
  }
}
