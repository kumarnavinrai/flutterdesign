import 'package:flutter/material.dart';
import 'package:my_flutter_project/screens/detail.dart';

import '../app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          SizedBox(
              height: 250,
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
                            Icon(Icons.search_outlined,
                                color: whiteColor, size: 30)
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "you'er family now",
                          style: Style.headLineStyle2.copyWith(
                              color: whiteColor, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mitchel B",
                          style: Style.headLineStyle5
                              .copyWith(fontSize: 30, color: whiteColor),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: -20,
                      bottom: 0,
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
                                        "https://i.pinimg.com/236x/dc/0a/e5/dc0ae574cb93486a4e9e575362e4f100.jpg"))),
                          ),
                        ),
                      ))
                ],
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const SizedBox(height: 30,),
                  Detail(
                      boxColor: orangeColor,
                      testName: "Covid Test",
                      testColor: whiteColor,
                      day: "Today",
                      dayColor: whiteColor,
                      nameColor: whiteColor),
                  const SizedBox(height: 20,),
                  Detail(
                      boxColor: whiteColor,
                      testName: "fever",
                      testColor: blackColor,
                      day: "over due",
                      dayColor: Colors.red,
                      nameColor: blackColor)
                ],
              ),
              Column(
                children: [
                  Detail(
                      boxColor: whiteColor,
                      testName: "Isolation",
                      testColor: blackColor,
                      day: "important",
                      dayColor: orangeColor,
                      nameColor: blackColor),
                  SizedBox(height: 20,),
                  Detail(
                      boxColor: blueGreyColor,
                      testName: "Get a jab!",
                      testColor: whiteColor,
                      day: "Tomorrow",
                      dayColor: whiteColor,
                      nameColor: whiteColor),


                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
