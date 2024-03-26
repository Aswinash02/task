import 'package:flutter/material.dart';
import 'package:task1/common/constant/app_colors.dart';

class CustomCon extends StatefulWidget {
  const CustomCon({super.key});

  @override
  State<CustomCon> createState() => _CustomConState();
}

class _CustomConState extends State<CustomCon> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget submitButton({required void Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.indigoShade,
            borderRadius: BorderRadius.circular(15)),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Text(
            'Submit',
            style: TextStyle(color: AppColors.indigoColor),
          ),
        ),
      ),
    ),
  );
}

Widget detailsRow() {
  return const SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 4,
        ),
        Icon(Icons.edit_square),
        SizedBox(
          width: 180,
          child: Text('Customer Name'),
        ),
        SizedBox(
          width: 200,
          child: Text('Customer Business Type'),
        ),
        SizedBox(
          width: 140,
          child: Text('Email'),
        ),
        SizedBox(
          width: 140,
          child: Text('Phone'),
        ),
        SizedBox(
          width: 140,
          child: Text('GST No.'),
        ),
      ],
    ),
  );
}
