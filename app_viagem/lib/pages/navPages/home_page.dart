import 'package:app_viagem/widgets/app_large_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top:70, left:20),
            child: Row(
              children: [
              Icon(Icons.menu,size:30, color:Colors.black54),
              Expanded(child:Container()),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height:50,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                ),
              )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(left:20),
            child: AppLargeText(text: "Discover"), //reutilizando o widget que criamos
          ),
          SizedBox(height: 30,),
          //tabbar
          Container(
            child: TabBar(
              tabs: [
                Tab(text:"Places"),
                Tab(text:"Inspirations"),
                Tab(text:"Emotions"),
              ],
            ),
          ),
          Container(
            child: TabBarView(children: [
              Text("Hi"),
              Text("There"),
              Text("bye"),

            ],),
          )
      ],)
    );
  }
}