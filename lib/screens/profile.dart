import 'package:flutter/material.dart';

import '../app_style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 250,
        child: Stack(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius  : const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_rounded, color: whiteColor, size: 30),
                      Icon(Icons.search_outlined, color: whiteColor, size: 30)
                    ],
                  ),
                  const Spacer(),
                  Text("Lorem", style: Style.headLineStyle5.copyWith(fontSize: 30, fontWeight: FontWeight.w400),),
                  const SizedBox(height: 10),
                  Text("Lorem ipsum dolor sit amet, \nconsetur sadipscing elitr. sad diam", textAlign: TextAlign.end, style: Style.headLineStyle1.copyWith( fontWeight: FontWeight.w300),),
                ],
              ),
            ),
            Positioned(
                left: -10, bottom: 0,
                child: Container(
                  height: 100, width: 100,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Container(
                      height: 60, width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://www.solidbackgrounds.com/images/7680x4320/7680x4320-dark-pastel-blue-solid-color-background.jpg")
                          )
                      ),
                    ),
                  ),
                )
            )
          ],
        )
    );
  }
}
