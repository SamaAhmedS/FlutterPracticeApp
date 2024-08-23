import 'package:flutter/material.dart';
import 'package:untitled/app_consts.dart';

import 'my_screen.dart';
import 'app_consts.dart';
import 'user.dart';

void main() {
  runApp(const MyApp());
}
  List<String>? images;

class MyApp extends StatelessWidget {
  final String nameOfUser = "@bruno";

  const MyApp({super.key});//, required this.nameOfUser
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //backgroundImage: ,
          backgroundColor: Colors.deepPurpleAccent,
          leading:Image.asset(
            '${assetsImagesPath}ic_back_container.png',
            width: 4,  // Set the desired width
            height: 4, // Set the desired height//color: Colors.white,
          ),
          centerTitle: true,
          title: Text(
            nameOfUser,
            style: TextStyle(color: Colors.white),
          ),
          actions: [
               Padding(
                 padding: const EdgeInsets.only(right:20.0), // Apply padding to the right
                 child:
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                      child: Text("Follow",style: TextStyle(color:Colors.blue)),
                    )
               ),
          ]
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: circularWithCircleAvatarDemo(usersDB())),
            Center(
              child: Column(
            children: [
                Text(usersDB().name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Text(usersDB().address, style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20),),
              ]
              ),
            ),

            Container(
            margin: const EdgeInsets.only(bottom: 1,top: 1),
            child: Column(children: [
              Container(
                width: 400,
                height: 50,
                color: Colors.grey,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0), // Apply padding to the right
                      child:
                      Text('${usersDB().followers} ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),

                    Text('Followers', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),),

                    Padding(
                      padding: const EdgeInsets.only(left: 50.0), // Apply padding to the right
                      child:
                      Text('${usersDB().following} ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    Text('Following', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20),),

                  ],
                ),
              ),
             // SizedBox(height: 30),
              Container(
                width: 200,
                height: 70,
                //padding: const EdgeInsets.only(left: 30.0,right: 20), // Apply padding to the right
                   child:Row(
                       children: [
                         Image.asset('${assetsImagesPath}container_of_icons.png',),
                         /*Image.asset('${assetsImagesPath}ic_globe.png',),*/
                         /*Image.asset('${assetsImagesPath}ic_insta.png',),*/
                         /*Image.asset('${assetsImagesPath}ic_facebook.png',),*/
                   ])
              )
            ],
             )),
            Center(
              child: Container(
                width:400,
                height: 120,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        images = usersDB().shots;
                        // Perform some action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                         minimumSize: Size(260, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // Make the button square
                          ),
                      ),
                      child: Text("shots"), //Text("${usersDB().shots.length} shots"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        images = usersDB().collections;
                        // Perform some action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                         minimumSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // Make the button square
                          ),
                      ),
                      child: Text("Collections"), //Text("${usersDB().shots.length} shots"),
                    ),
                ],),
              ),
            ),

            Container(
              width: 400,
              height: 120,
              color: Colors.redAccent,
               //if(images != null){
              child: Column(
                children: [
                  Row(
                    children: [
                     /*if(images != null){*/
                     /* Image.asset('${assetsImagesPath}container_of_icons.png',), */
                     /*}*/

                     ]
                  ,)

                ],
               // }
              ),
            ),

          ],
        )
                               }
        /*const Center(
          child:SelectionArea(child: Text("Your content here"))
        ),*/
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


Widget circularWithCircleAvatarDemo(User user) {
  return CircleAvatar(
    radius: 50,

    backgroundColor: Colors.deepPurpleAccent,
    backgroundImage: user.image == null
        ? null
        : NetworkImage(
      user.image!,
    ),
    child: user.image != null
        ? null
        : Text(
      user.name,
      style: const TextStyle(color: Colors.white, fontSize: 50),
    ),
  );
}