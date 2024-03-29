

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'List.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  TextEditingController txtCourse=TextEditingController();
  TextEditingController txtSchool=TextEditingController();
  TextEditingController txtGrade =TextEditingController();
  TextEditingController txtYear=TextEditingController();

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
          "Education",
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
                 Course= txtCourse.text;
                  Grade=txtGrade.text;
                  School=txtSchool.text;
                 Year= txtYear.text;

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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 310,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      //Course
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtCourse,
                            textInputAction: TextInputAction.next,
                            maxLines: 1,
                            decoration: InputDecoration(
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
                              label:Text('Course/Degree',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),
                      //School
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtSchool,
                            textInputAction: TextInputAction.next,

                            maxLines: 1,
                            decoration: InputDecoration(
                              counterText: '',
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
                              label:Text('School / University',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),
                      //Grade
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtGrade,

                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(

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
                              label:Text('Grade/Score',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),
                      //Year
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtYear,

                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(

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
                              label:Text('Year',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(270, 380, 0, 0),
              child: InkWell(
                onTap: () {

                },
                child: Container(
                  height:40,
                  width: 90,
                 decoration: BoxDecoration(
                   color: Color(0xff5A52A5),
                   borderRadius: BorderRadius.circular(15),
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
                   Icon(Icons.add,color: Colors.white,size: 28,),
                  Text("ADD",style: TextStyle(
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
String  Year ='';
String  Grade='';
String  School ='';
String  Course ='';




