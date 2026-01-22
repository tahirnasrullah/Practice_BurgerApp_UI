
import 'package:flutter/material.dart';
import 'package:practice/main.dart';

class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       body: Center(
         child: Container(
           width: 200,height: 200,
           child: Column(
            children: [
              Text('welcome',style: TextStyle(color: Colors.white,fontSize: 20),),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(),));
              }, child: Text("Get Started",style: TextStyle(fontWeight: FontWeight.w900),)),

            ],
           ),
         ),
       )
        
      

    );
  }

}