import 'package:flutter/material.dart';
import 'package:lion_love/login/screens/bio_screen.dart';
import 'package:lion_love/login/screens/demo_screen.dart';
import 'package:lion_love/login/screens/email_screen.dart';
import 'package:lion_love/login/screens/picture_screen.dart';
import 'package:lion_love/login/screens/start_screen.dart';
import 'package:lion_love/widgets/custom_appbar.dart';

class OnBoarding extends StatelessWidget {
  static const String routeName='/OnBoarding';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name:routeName),
      builder: (context)=>OnBoarding(),
    );
  }



  static const List<Tab> tabs=<Tab>[
    Tab(text:"Start"),
    Tab(text:"Email"),
    Tab(text:"Demo"),
    Tab(text:"Pictures"),
    Tab(text:"Bio"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: tabs.length, child:
    Builder(builder: (BuildContext context)
    {
      final TabController tabController = DefaultTabController.of(context)!;
      tabController.addListener(() {
        if (!tabController.indexIsChanging) {}
      });
      return Scaffold(
        appBar: CustomAppBar(),
        body: TabBarView(
          children:[
            Start(tabController:tabController),
            Email(tabController:tabController),
            Demo(tabController:tabController),
            Pictures(tabController:tabController),
            Bio(tabController:tabController),
          ]
        ),
      );
    }),
    );
  }
}
