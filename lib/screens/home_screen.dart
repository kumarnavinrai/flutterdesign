import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_project/app_style.dart';
import 'package:my_flutter_project/screens/lorem_row.dart';
import 'package:my_flutter_project/screens/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Profile(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Lorem ipsum", style: Style.headLineStyle5.copyWith(fontWeight: FontWeight.bold, fontSize: 30),),
                    Text("Lorem ipsum", style: Style.headLineStyle5.copyWith(color: greyColor, fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
            ),
        
            LoremRow(
                boxColor: yellowColor,
              child: Container(
                height: 30, width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: whiteColor),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(child: Icon(Icons.circle_outlined, color: whiteColor, size: 10),),
              ),
            ),
            LoremRow(
                boxColor: greenColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30, width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: whiteColor),
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    height: 30, width: 30,
                    decoration: BoxDecoration(
                        border: Border.all(color: whiteColor),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  )
                ],
              ),
            ),
            LoremRow(
                boxColor: blueGreyColor,
              child: Text("☰", style: Style.headLineStyle3.copyWith(fontSize: 40, color: whiteColor),),
            )
        
        
          ],
        ),
      )
    );
  }
}
