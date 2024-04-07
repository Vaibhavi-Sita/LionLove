import 'package:flutter/material.dart';
import 'package:lion_love/widgets/custom_button.dart';

class Start extends StatelessWidget {

  final TabController tabController;
  const Start({Key? key,required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              children:[
                Container(
                  height:200,
                  width: 200,
                  child:Image.asset("assets/images/images-2.jpeg"),
                ),
                SizedBox(height: 50),
                Text('Welcome to Lion Love',style:Theme.of(context).textTheme.headline2),
                SizedBox(height:20),
                Text(
                  'Write something the gay',
                  style: Theme.of(context).textTheme.headline6!.copyWith(height: 1.8),
                ),
              ],
          ),
          CustomButton(tabController:tabController),
        ],
      ),
    );
  }
}

