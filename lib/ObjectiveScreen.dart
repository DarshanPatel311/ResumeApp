import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Objective extends StatefulWidget {
  const Objective({super.key});

  @override
  State<Objective> createState() => _ObjectiveState();
}

class _ObjectiveState extends State<Objective> {
  TextEditingController txtObjective=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff5A52A5),
        title: Text(
          "Objective",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('/home');
                  objective= txtObjective.text;

                });

              },
              icon: Icon(
                Icons.done,
                color: Colors.white,
                size: 29,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(

                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: TextField(
                      // expands: true,
                        maxLines: 7,
                        minLines: 1,
                        controller: txtObjective,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1,color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2,color: Color(0xff5A52A5),),
                            borderRadius: BorderRadius.circular(7),
                          ),
        
                          enabledBorder:   OutlineInputBorder(
                            borderSide: BorderSide(width: 2,color: Colors.black26),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          label:Text('Objective',style: TextStyle(
                              color: Colors.black38
                          ),),
                        ),
                        keyboardType: TextInputType.text),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(190, 620, 0, 0),
              child: InkWell(
                onTap: () {
                   Navigator.of(context).pushNamed('/SelectObj');
                },
                child: Container(
                  height:40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff5A52A5),
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,1),
                        spreadRadius: 1,
                        blurRadius: 2,
                        color: Colors.black12,
                      )
                    ],
                  ),child: Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.flag,color: Colors.white,size: 28,),
                    Text("Select Objective",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),)
                  ],),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
String  objective ='';









