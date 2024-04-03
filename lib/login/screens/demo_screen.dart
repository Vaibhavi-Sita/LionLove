import 'package:flutter/material.dart';
import 'package:lion_love/widgets/custom_button.dart';
import 'package:lion_love/widgets/custom_check.dart';
import 'package:lion_love/widgets/custom_text_field.dart';
import 'package:lion_love/widgets/custom_text_header.dart';

class Demo extends StatelessWidget {
  final TabController tabController;
  const Demo({Key? key,required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextHeader(tabController:tabController,text: 'What is Your Gender?'),
                SizedBox(height: 20),
                CustomCheckbox(text: 'MALE'),
                CustomCheckbox(text: 'FEMALE'),
                SizedBox(height: 50),
                CustomTextHeader(tabController:tabController,text: 'What\'s Your Age?'),
                CustomTextField(tabController: tabController,text:"Add age"),
              ],
            ),
            SizedBox(height: 10),
            CustomButton(tabController: tabController, text: 'NEXT STEP'),
          ],
        ),
      ),
    );
  }
}