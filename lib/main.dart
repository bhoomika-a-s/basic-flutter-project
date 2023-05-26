import 'package:flutter/material.dart';

main() {
  runApp(const Myapp()); 
}


class Myapp extends StatelessWidget {
  const Myapp({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(primaryColor: const Color.fromARGB(255, 71, 87, 151),//color fo app is given as loading color etc
      ),
      home:HomeScreen(),
    );
  }
}

//to create a screen
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
HomeScreen({super.key});

  String name= 'CrossRoads';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 62, 131) ,
      appBar: AppBar(), 
       // color of app will be displayed
      body: SafeArea(
            child: Container(
              //color:Colors.blueGrey,
              width: double.infinity,
              height: double.infinity,

              //child: Center( //container and center has same function
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    name ,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50 ,
                      fontWeight: FontWeight.w500
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    TextButton(onPressed: (){
                      print('Text Button Clicked');
                  },
                  child: const Text('Click Me'),
                  ),

                  IconButton(onPressed: (){},
                  icon: Icon(Icons.mic),
                  ),
                  ],
                  ),


                  ElevatedButton(onPressed: (){
                      print('Elevated Button Clicked');
                  },
                  child: const Text('Click Me'),)
                ],
                ),
             // ),
            ),
      ),
    );
  }
}
