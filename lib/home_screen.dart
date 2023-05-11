import 'package:color_app/color_screen.dart';
import 'package:flutter/material.dart';

import 'component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(child: Container(
          padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.5),
              ])
            ),
            child: const Text('My First App (Color)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ))),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
          children: colorList.map((colorItem) =>
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ColorScreen(colorItem))
                  );
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
                  decoration: BoxDecoration(
                    color: colorItem,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(5,5),
                        color: Colors.blueGrey,
                        blurRadius: 4,
                      )
                    ]

                  ),
          ),
              )).toList(),
        ),
      ),
    );

  }
}
