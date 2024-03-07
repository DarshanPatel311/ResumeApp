

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'List.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  TextEditingController txtName=TextEditingController();
  TextEditingController txtAdd=TextEditingController();
  TextEditingController txtEmail=TextEditingController();
  TextEditingController txtPhone=TextEditingController();
  TextEditingController txtDOB=TextEditingController();
  TextEditingController txtWebsite=TextEditingController();
  TextEditingController txtLinkedin=TextEditingController();
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
          "Personal Details",
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
                  Name = txtName.text;

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
                height: 670,
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
                      //name
                      TextField(
                          controller: txtName,
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
                            label:Text('Name',style: TextStyle(
                                color: Colors.black38
                            ),),
                          ),
                          keyboardType: TextInputType.text),
                      //Address
                      TextField(
                          controller: txtAdd,
                          textInputAction: TextInputAction.next,
                          maxLength: 50,
                          maxLines: 2,
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
                            label:Text('Address',style: TextStyle(
                                color: Colors.black38
                            ),),
                          ),
                          keyboardType: TextInputType.text),
                      //Email
                      TextField(
                          controller: txtEmail,

                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'abc@gmail.com',
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
                      //Phone
                      TextField(
                          controller: txtPhone,
                          maxLength: 10,
                          textInputAction: TextInputAction.next,
                          // maxLengthEnforcement: MaxLengthEnforcement.none,
                          decoration: InputDecoration(
                            counterText: '',
                            alignLabelWithHint: false,
                            prefixText: '+91',
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
                          keyboardType: TextInputType.number),
                      //dob
                      TextField(
                          controller: txtDOB,
                          textInputAction: TextInputAction.next,
                          maxLength: 10,


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

                            label:Text('Date Of Birth',style: TextStyle(
                                color: Colors.black38
                            ),),
                          ),
                          keyboardType: TextInputType.text),
                      //website
                      TextField(
                          controller: txtWebsite,
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
                            label:Text('Website',style: TextStyle(
                                color: Colors.black38
                            ),),
                          ),
                          keyboardType: TextInputType.text),
                      //LinkedIn
                      TextField(
                          controller: txtLinkedin,
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
                            label:Text('Linkedin',style: TextStyle(
                                color: Colors.black38
                            ),),
                          ),
                          keyboardType: TextInputType.text),

                      Row(
                        children: [
                          InkWell(
                            onTap: () {

                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff8596A0),
                                borderRadius: BorderRadius.circular(10),
                              ),child: Center(
                              child: Icon(Icons.add,size: 50,color: Colors.white,),
                            ),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Text('Photo',style: TextStyle(
                            color: Colors.black38,
                            fontSize: 20,
                          ),),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
String  Name ='';
String  Add ='';
String  Email ='';
String  Phone ='';
String  DOB ='';
String  website ='';
String  Linkedin ='';


// TextEditingController txt=TextEditingController();
// TextEditingController txtAdd=TextEditingController();
// TextEditingController txtEmail=TextEditingController();
// TextEditingController txtPhone=TextEditingController();
// TextEditingController txtDOB=TextEditingController();
// TextEditingController txtWebsite=TextEditingController();
// TextEditingController txtLinkedin=TextEditingController();
