import 'package:flutter/material.dart';
import 'package:lion_love/pages/home.dart';
import 'package:lion_love/routes.dart';
import 'package:lion_love/swipes/swipe_bloc.dart';
import 'package:lion_love/widgets/user_screen.dart';
import 'authentication/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login/onboarding_screen.dart';
import 'model/user_model.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider
    (
        providers: [BlocProvider(create:(_)=>SwipeBloc()..add(LoadUsersEvent(users:User.users  )))],
        child:  MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        routes: {
          "/": (context) =>OnBoarding(),
          MyRoutes.OnboardingRoute:(context)=>OnBoarding(),
          MyRoutes.homeRoute: (context) => HomePage(),
          // MyRoutes.loginRoute: (context) => LoginScreen(),
          MyRoutes.usersRoute:(context)=>UserScreen(),
        },
        // Set your home page widget here
      )
    );
  }
}

