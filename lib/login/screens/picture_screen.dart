import 'package:flutter/material.dart';
import 'package:lion_love/widgets/custom_button.dart';
import 'package:lion_love/widgets/custom_image_container.dart';
import 'package:lion_love/widgets/custom_text_header.dart';

class Pictures extends StatelessWidget {
  final TabController tabController;

  const Pictures({
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
                CustomTextHeader(tabController: tabController,text: 'Add 2 or More Pictures'),
                SizedBox(height: 20),
                Row(
                  children: [
                    CustomImageContainer(),
                    CustomImageContainer(),
                    CustomImageContainer(),
                  ],
                ),
                Row(
                  children: [
                    CustomImageContainer(),
                    CustomImageContainer(),
                    CustomImageContainer(),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 10),
                CustomButton(tabController: tabController, text: 'NEXT STEP'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}