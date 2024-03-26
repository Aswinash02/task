import 'package:flutter/material.dart';
import 'package:task1/common/constant/app_colors.dart';
import 'package:task1/common/constant/app_icons.dart';
import 'package:task1/common/widgets/custom_container.dart';
import 'package:task1/common/widgets/custom_textfield.dart';
import 'package:task1/common/widgets/custon_icon.dart';
import 'package:task1/common/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool previous = true;
  bool fullScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              titleText(
                text: 'MASTER',
              ),
              titleText(
                text: 'INVOICES',
              ),
              titleText(
                text: 'ESTIMATES',
              ),
              titleText(
                text: 'INCOME',
              ),
              titleText(
                text: 'VOUCHERS',
              ),
              titleText(
                text: 'CASH/BANK',
              ),
              titleText(
                text: 'PAYROLL',
              ),
              titleText(
                text: 'REPORT',
              ),
              titleText(
                text: 'FINAL AC',
              )
            ],
          ),
        ),
        backgroundColor: AppColors.scaffoldColor.withOpacity(0.3),
        body: fullScreen
            ? Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 70.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          drawerText(
                            text: 'Customer',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          drawerText(
                            text: 'Supplier',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          drawerText(
                            text: 'Ledger',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          drawerText(
                            text: 'Item Type',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          drawerText(
                            text: 'Item Name',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          drawerText(
                            text: 'Stock Opening',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          drawerText(
                            text: 'Bank Account',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          drawerText(
                            text: 'Loan/Advances',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: previous ? customContainer() : nextContainer(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          customRow(
                              beginText: 'GST',
                              icon: AppIcons.arrowDownIcon,
                              endText: 'Trading'),
                          const SizedBox(
                            height: 25,
                          ),
                          customRow(
                              beginText: 'Day Book', endText: 'Profit & Loss'),
                          const SizedBox(
                            height: 25,
                          ),
                          customRow(
                              beginText: 'Stock details',
                              endText: 'Trail Balance'),
                          const SizedBox(
                            height: 25,
                          ),
                          customRow(
                              beginText: 'Register',
                              icon: AppIcons.arrowDownIcon,
                              endText: 'Balance Sheet'),
                          const SizedBox(
                            height: 25,
                          ),
                          customRow(
                            beginText: 'Cash Account',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          customRow(
                            beginText: 'Bank Account',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          customRow(
                            beginText: 'Ledger',
                            icon: AppIcons.arrowDownIcon,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          customRow(
                            beginText: 'Duties and Tax',
                            icon: AppIcons.arrowDownIcon,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          customRow(
                            beginText: 'Summary',
                            icon: AppIcons.arrowDownIcon,
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              aboutDrawer(context);
                            },
                            child: customIcon(icon: AppIcons.personIcon)),
                        const SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                            onTap: () {
                              notificationDrawer(context);
                            },
                            child: customIcon(icon: AppIcons.notificationIcon))
                      ],
                    )
                  ],
                ),
              )
            : previous
                ? customContainer()
                : nextContainer());
  }

  Widget titleText({
    required String text,
  }) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, color: AppColors.blueAccentColor),
    );
  }

  Widget drawerText({required String text}) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    );
  }

  Widget customRow(
      {required String beginText, IconData? icon, String? endText}) {
    return Row(
      children: [
        SizedBox(
          width: 130,
          child: Text(
            beginText,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(icon),
        ),
        SizedBox(
          width: 130,
          child: Text(endText ?? ''),
        )
      ],
    );
  }

  Widget customContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                previous = true;
                              });
                            },
                            child: customIcon(icon: AppIcons.arrowBackIcon)),
                        const SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                previous = false;
                              });
                            },
                            child: customIcon(icon: AppIcons.arrowForwardIcon)),
                      ],
                    ),
                  ),
                  const Text('Customer'),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          fullScreen = !fullScreen;
                        });
                      },
                      child: customIcon(icon: AppIcons.fullscreenIcon)),
                ],
              ),
            ),
            const Divider(
              color: AppColors.black38Color,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: customTextField(
                        hintText: 'GST NO. :*',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: customTextField(
                        hintText: 'Company / client Name *',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: customTextField(
                          hintText: 'Exempted',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: customTextField(
                        hintText: 'Email :',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: customTextField(
                        hintText: 'Phone :*',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: customTextField(
                          hintText: 'Opening Balance',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: customTextField(
                        hintText: 'Address :*',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: customTextField(
                        hintText: 'City : *',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: customTextField(
                          hintText: 'State :*',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: customTextField(
                        hintText: 'Country :*',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: customTextField(
                        hintText: 'Zip/Postal :*',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: customTextField(
                          hintText: 'INR',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            submitButton(onTap: () {}),
            customTextField(
                hintText: 'search', width: 300, icon: AppIcons.searchIcon),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        detailsRow(),
                        const Divider(
                          color: AppColors.black38Color,
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget nextContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                previous = true;
                              });
                            },
                            child: customIcon(icon: AppIcons.arrowBackIcon)),
                        const SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                previous = false;
                              });
                            },
                            child: customIcon(icon: AppIcons.arrowForwardIcon)),
                      ],
                    ),
                  ),
                  const Text('Sales Invoice'),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          fullScreen = !fullScreen;
                        });
                      },
                      child: customIcon(icon: AppIcons.fullscreenIcon)),
                ],
              ),
            ),
            const Divider(
              color: AppColors.black38Color,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: customTextField(
                        hintText: 'Select',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: customTextField(
                        hintText: 'City : *',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: customTextField(
                          hintText: 'BankDetails',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: customTextField(
                        hintText: 'Country :*',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: customTextField(
                        hintText: 'Zip/Postal :*',
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: customTextField(
                          hintText: 'INR',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            submitButton(onTap: () {}),
            customTextField(
                hintText: 'search', width: 300, icon: AppIcons.searchIcon),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        detailsRow(),
                        const Divider(
                          color: AppColors.black38Color,
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
