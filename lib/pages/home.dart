import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lion_love/swipes/swipe_bloc.dart';
import 'package:lion_love/widgets/choice_button.dart';
import 'package:lion_love/widgets/custom_appbar.dart';
import 'package:lion_love/widgets/user_card.dart';
import '../routes.dart';
import 'drawer.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<SwipeBloc,SwipeState>(
        builder: (context,state) {
          if (state is SwipeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoaded) {
            return Column(
                children: [
                  InkWell(
                    onDoubleTap:(){
                      Navigator.pushNamed(context, MyRoutes.usersRoute,arguments:state.users[0]);
                    },
                    child: Draggable(
                        child: UserCard(user: state.users[0]),
                        feedback: UserCard(user: state.users[0]),
                        childWhenDragging: UserCard(user: state.users[1]),
                        onDragEnd: (drag) {
                          if (drag.velocity.pixelsPerSecond.dx < 0) {
                            context.read<SwipeBloc>().add(SwipeLeftEvent(user: state.users[0]));
                            print('Swiped Left');
                          } else {
                            context.read<SwipeBloc>().add(SwipeRightEvent(user: state.users[0]));
                            print('Swiped Right');
                          }
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap:(){
                            context.read<SwipeBloc>().add(SwipeLeftEvent(user: state.users[0]));
                            print('Swiped Left');
                          },
                          child: ChoiceButton(
                            width: 60,
                            height: 60,
                            size: 25,
                            color: Theme
                                .of(context)
                                .accentColor,
                            icon: Icons.clear_rounded,
                            hasGradient: false,
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            context.read<SwipeBloc>().add(SwipeRightEvent(user: state.users[0]));
                            print('Swiped Right');
                          },
                          child: ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 25,
                            color: Colors.deepPurple,
                            icon: Icons.favorite,
                            hasGradient: false,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            context.read<SwipeBloc>().add(SwipeRightEvent(user: state.users[0]));
                            print('Swiped Right');
                          },
                          child: ChoiceButton(
                            width: 60,
                            height: 60,
                            size: 25,
                            color: Theme
                                .of(context)
                                .accentColor,
                            icon: Icons.check,
                            hasGradient: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            );
          }else{
            return Text('Something is wrong');
          }
        }
      ),
        drawer:MyDrawer()
    );
  }
}





//
// BlocBuilder<SwipeBloc, SwipeState>(
// builder: (context, state) {
// if (state is SwipeLoading) {
// return Center(
// child: CircularProgressIndicator(),
// );
// } else if (state is SwipeLoaded) {
// return Column(
// children: [
// InkWell(
// onDoubleTap: () {
// Navigator.pushNamed(context, '/users',
// arguments: state.users[0]);
// },
// child: Draggable<User>(
// data: state.users[0],
// child: UserCard(user: state.users[0]),
// feedback: UserCard(user: state.users[0]),
// childWhenDragging: UserCard(user: state.users[1]),
// onDragEnd: (drag) {
// if (drag.velocity.pixelsPerSecond.dx < 0) {
// context.read<SwipeBloc>().add(SwipeLeftEvent(user: state.users[0]));
// print('Swiped Left');
// } else {
// context.read<SwipeBloc>().add(SwipeRightEvent(user: state.users[0]));
// print('Swiped Right');
// }
// },
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// vertical: 8.0,
// horizontal: 60,
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// InkWell(
// onTap: () {
// context.read<SwipeBloc>()
// ..add(SwipeRightEvent(user: state.users[0]));
// print('Swiped Right');
// },
// child: ChoiceButton(
// width: 60,
// height: 60,
// hasGradient: false,
// size:25 ,
// color:Theme.of(context).accentColor,
// icon:Icons.clear_rounded,
// ),
// ),
// InkWell(
// onTap: () {
// context.read<SwipeBloc>()
// ..add(SwipeRightEvent(user: state.users[0]));
// print('Swiped Left');
// },
// child: ChoiceButton(
// width: 80,
// height: 80,
// hasGradient: true,
// size:30 ,
// color:Colors.white,
// icon:Icons.clear_rounded,
// ),
// ),
// ChoiceButton(
// width: 60,
// height: 60,
// hasGradient: false,
// size:25 ,
// color:Theme.of(context).primaryColor,
// icon:Icons.watch_later
// ),
// ],
// ),
// ),
// ],
// );
// } else {
// return Text('Something went wrong.');
// }
// },
// ),
// drawer: MyDrawer(),