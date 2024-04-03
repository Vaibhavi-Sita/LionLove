import 'package:flutter/material.dart';
import 'package:lion_love/widgets/custom_button.dart';
import 'package:lion_love/widgets/custom_text_field.dart';
import 'package:lion_love/widgets/custom_text_header.dart';


class Email extends StatelessWidget {
  final TabController tabController;

  const Email({Key? key,required this.tabController,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomTextHeader(tabController:tabController,text:'Add your Email ID'),
              CustomTextField(tabController: tabController,text:"Enter your email"),
            ],
          ),
          SizedBox(height: 10),
          CustomButton(tabController: tabController, text: 'NEXT STEP'),
        ],
      ),
    );
  }
}

