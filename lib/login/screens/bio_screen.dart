import 'package:flutter/material.dart';
import 'package:lion_love/widgets/custom_button.dart';
import 'package:lion_love/widgets/custom_text_container.dart';
import 'package:lion_love/widgets/custom_text_field.dart';
import 'package:lion_love/widgets/custom_text_header.dart';

import '../../routes.dart';


class Bio extends StatelessWidget {
  final TabController tabController;

  const Bio({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextHeader(tabController: tabController,text: 'Describe Yourself'),
                CustomTextField(tabController: tabController,text: 'ENTER YOUR BIO'),
                SizedBox(height: 100),
                CustomTextHeader(tabController: tabController,text: 'What Do You Like?'),
                Row(
                  children: [
                    CustomTextContainer(text: 'MUSIC'),
                    CustomTextContainer(text: 'ECONOMICS'),
                    CustomTextContainer(text: 'POLITICS'),
                  ],
                ),
                Row(
                  children: [
                    CustomTextContainer(text: 'HIKING'),
                    CustomTextContainer(text: 'FOOTBALL'),
                    CustomTextContainer(text: 'MOVIES'),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute); // Replace NextPage() with your actual next page widget
                  },
                child:CustomButton(tabController: tabController, text: 'NEXT STEP',),
                )],
            ),
          ],
        ),
      ),
    );
  }
}