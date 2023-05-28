
import 'package:flutter/material.dart';
import '../../const/const.dart';
import 'widgets.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({
    super.key,
    this.width,
    this.isResponsive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
          children: [
            isResponsive == true ? Container(margin: const EdgeInsets.only(left: 20), child: AppText(text: "Записаться", size: 25, color: Colors.white,)) : Container(),
            Image.asset('img/button.png'),
          ],
        ),
      ),
    );
  }
}