import 'package:flutter/material.dart';
import 'package:task1/common/constant/app_colors.dart';

Widget customTextField(
    {required String hintText,
    TextEditingController? controller,
    IconData? icon,
    double? width}) {
  return SizedBox(
    width: width,
    height: 40,
    child: TextField(
      controller: controller ?? TextEditingController(),
      cursorColor: AppColors.greyColor,
      decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(icon),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: AppColors.greyColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: AppColors.greyColor,
              )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: AppColors.greyColor,
              ))),
    ),
  );
}
