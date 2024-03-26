import 'package:flutter/material.dart';
import 'package:task1/common/constant/app_colors.dart';
import 'package:task1/common/constant/app_icons.dart';

Future<void> notificationDrawer(BuildContext context) {
  return showDialog(
    barrierColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Stack(
        children: [
          Positioned(
            top: 70,
            right: 15,
            child: AlertDialog(
              contentPadding: EdgeInsets.zero,
              content: Container(
                  color: Colors.transparent.withOpacity(0.1),
                  height: 550,
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteColor,
                      ),
                      child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Colors.blueAccent.withOpacity(0.2)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      AppIcons.notificationIcon,
                                      color: AppColors.blueAccentColor,
                                    ),
                                  )),
                              title: Text('hello $index'),
                            );
                          }),
                    ),
                  )),
            ),
          ),
        ],
      );
    },
  );
}

Future<void> aboutDrawer(BuildContext context) {
  return showDialog(
    barrierColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Stack(
        children: [
          Positioned(
            top: 60,
            right: 15,
            child: AlertDialog(
              contentPadding: EdgeInsets.zero,
              content: Container(
                  color: Colors.transparent.withOpacity(0.1),
                  height: 550,
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              leading: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.greyShade),
                                child: const Icon(
                                  AppIcons.personIcon,
                                  size: 30,
                                ),
                              ),
                              title: const Text('Person Name'),
                              subtitle: const Text('personalemail@gmail.com'),
                            ),
                          ),
                          const Divider()
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ],
      );
    },
  );
}
