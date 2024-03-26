import 'package:flutter/material.dart';
import 'package:task1/common/constant/app_colors.dart';

Widget customIcon({required IconData icon}) {
  return Container(
    decoration:  BoxDecoration(color: AppColors.greyShade, shape: BoxShape.circle),
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Icon(
        icon,
        size: 16,
      ),
    ),
  );
}
