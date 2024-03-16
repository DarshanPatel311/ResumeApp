import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'List.dart';

class SelectObj extends StatefulWidget {
  const SelectObj({super.key});

  @override
  State<SelectObj> createState() => _SelectObjState();
}

class _SelectObjState extends State<SelectObj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        leading: IconButton(onPressed:
          () {
            Navigator.pushReplacementNamed(context, '/Objective');
          },
          icon: Icon(Icons.arrow_back_rounded,color: Colors.white,),),
        backgroundColor: Color(0xff5A52A5),
        title: Text("Select Objective",style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(Selectobj.length, (index) => text(
            index
          ))
        ),
      ),
    );
  }
}
Widget text (
    int index
    ){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(Selectobj[index]['Text'],style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.5,
            ),),
          ),
        ],
      ),
    ),
  );
}
