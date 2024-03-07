import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_flutter_project/screens/date_row.dart';
import 'package:my_flutter_project/screens/lorem_row.dart';

import '../app_style.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
              height: 280,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        color: indigoColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios_rounded,
                                color: whiteColor, size: 30),
                            Icon(Icons.notifications_outlined,
                                color: whiteColor, size: 30)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 0,
                      child: Container(
                        height: 180,
                        width: 360,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://cdn.icon-icons.com/icons2/3150/PNG/512/user_profile_female_icon_192701.png"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lorem ipsum",
                              style: Style.headLineStyle5
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lorem ipsum",
                              style: Style.headLineStyle1.copyWith(
                                  color: greyColor,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      left: -10,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: whiteColor, shape: BoxShape.circle),
                        child: Center(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://img.freepik.com/free-photo/abstract-room-sun-card-blank_1258-263.jpg"))),
                          ),
                        ),
                      ))
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lorem ipsum",
                  style: Style.headLineStyle5.copyWith(fontSize: 25),
                )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DateRow(
                    boxColor: blueGreyColor,
                    date: "6-12",
                    dateColor: greyColor),
                DateRow(
                    boxColor: blueGreyColor,
                    date: "4-8",
                    dateColor: whiteColor),
                DateRow(
                    boxColor: lightBlueColor,
                    date: "8-12",
                    dateColor: blueGreyColor),
                DateRow(
                    boxColor: lightBlueColor,
                    date: "12-16",
                    dateColor: blueGreyColor),
              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView(scrollDirection: Axis.vertical, children: [
              LoremRow(
                boxColor: whiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cancel,
                      color: yellowColor,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Awaiting",
                      style: Style.headLineStyle2,
                    )
                  ],
                ),
              ),
              LoremRow(
                boxColor: whiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.done_all,
                      color: greenColor,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Done",
                      style: Style.headLineStyle2,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
