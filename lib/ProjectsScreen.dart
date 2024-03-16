import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  TextEditingController txtTile=TextEditingController();
  TextEditingController txtDetails=TextEditingController();
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
          "Projects",
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
                   Details= txtDetails.text;
                   Title= txtTile.text;


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
                  height: 200,
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
                        Container(
                          height: 55,
                          child: TextField(
                            // expands: true,
                              maxLines: 7,
                              minLines: 1,
                              // controller: txtObjective,
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
                                label:Text('Title',style: TextStyle(
                                    color: Colors.black38
                                ),),
                              ),
                              keyboardType: TextInputType.text),
                        ),
                        Container(
                          height: 105,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                             maxLines: 4,
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
                                  label:Text('Details',style: TextStyle(
                                      color: Colors.black38
                                  ),),
                                ),
                                keyboardType: TextInputType.text),
                          ),
                        ),
                      ],
                    ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(190, 500, 0, 0),
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
String  Title ='';
String Details ='';
