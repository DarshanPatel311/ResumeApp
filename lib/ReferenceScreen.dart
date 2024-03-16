import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reference extends StatefulWidget {
  const Reference({super.key});

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
  TextEditingController txtRefeName=TextEditingController();
  TextEditingController txtRJobTitle=TextEditingController();
  TextEditingController txtRCompanyName =TextEditingController();
  TextEditingController txtREmail=TextEditingController();
  TextEditingController txtRPhone=TextEditingController();
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
          "Reference",
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
                  RefeName=txtRefeName.text;
                  RCompanyName=txtRCompanyName.text;
                  REmail=txtREmail.text;
                    RjobTitle=txtRJobTitle.text;
                    RPhone =txtRPhone.text;
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
                height: 400,
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
                            controller: txtRefeName,
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
                              label:Text('Reference Name',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),
                      //School
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtRJobTitle,
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
                              label:Text('Job Title ',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),
                      //Grade
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtRCompanyName,

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
                              label:Text('Company Name',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),
                      //Year
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtREmail,

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
                              label:Text('Email',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtRPhone,

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
                              label:Text('Phone',style: TextStyle(
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
              padding: const EdgeInsets.fromLTRB(270, 300, 0, 0),
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
String  RefeName='';
String  RjobTitle='';
String  RCompanyName ='';
String  REmail ='';
String  RPhone ='';

