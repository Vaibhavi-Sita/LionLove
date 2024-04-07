import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lion_love/model/user_model.dart';
import 'package:lion_love/widgets/choice_button.dart';


class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user=User.users[0];
    return Scaffold(
      appBar:AppBar(
        elevation:0,
        backgroundColor: Colors.grey,
      ),
      extendBodyBehindAppBar: true,
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/2,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Hero(
                      tag:'user_image',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                            image:DecorationImage(image:NetworkImage(user.imageUrls[0]),
                        fit:BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ChoiceButton(
                        width: 60,
                        height: 60,
                        size: 25,
                        color: Theme
                            .of(context)
                            .accentColor,
                        icon: Icons.clear_rounded,
                        hasGradient: false,
                      ),
                      ChoiceButton(
                        width: 80,
                        height: 80,
                        size: 25,
                        color: Colors.deepPurple,
                        icon: Icons.favorite,
                        hasGradient: false,
                      ),
                      ChoiceButton(
                        width: 60,
                        height: 60,
                        size: 25,
                        color: Theme
                            .of(context)
                            .accentColor,
                        icon: Icons.check,
                        hasGradient: false,
                      ),
                    ],
                  ),
                ),
              )
    ]
            ),
    ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                Text('${user.name},${user.age}',style:Theme.of(context).textTheme.headline2),
                  Text('${user.jobTitle}',style:Theme.of(context).textTheme.headline3!.copyWith(fontWeight:FontWeight.normal),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'About',
                    style:Theme.of(context).textTheme.headline3,
                  ),
                  Text('${user.bio}',style:Theme.of(context).textTheme.headline6!.copyWith(height:2),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Interests',
                    style:Theme.of(context).textTheme.headline3,
                  ),
                  Row(
                    children:
                      user.interests.map((interest)=> Container(
                        padding: const EdgeInsets.all(5.0),
                        margin: const EdgeInsets.only(top:5.0,right:5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                            gradient:LinearGradient(colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).accentColor,
                        ],),),
                        child:Text(
                            interest,style:Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white)
                        ),
                      ),).toList(),
                  )
                ],),
            )

          ],
        ),
      ),
    );
  }
}
 