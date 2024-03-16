import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  TextEditingController txtCompanyName=TextEditingController();
  TextEditingController txtJobTitle=TextEditingController();
  TextEditingController txtStartDate=TextEditingController();
  TextEditingController txtEndDate =TextEditingController();
  TextEditingController txtdetails=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          "Experience",
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
                 CompanyName= txtCompanyName.text;
                 details= txtdetails.text;
                 EndDate=  txtEndDate.text;
                  JobTitle= txtJobTitle.text;
                   StartDate=txtStartDate.text;

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
                height: 380,
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
                            controller: txtCompanyName,
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
                              label:Text('Company Name',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),
                      //School
                      Container(
                        height: 55,
                        child: TextField(
                            controller: txtJobTitle,
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
                              label:Text('Job Title',style: TextStyle(
                                  color: Colors.black38
                              ),),
                            ),
                            keyboardType: TextInputType.text),
                      ),

                     Row(

                       children: [
                         SizedBox(width: 1,),
                         Container(
                           height: 55,
                           width: 175,
                           child: TextField(
                               controller: txtStartDate,

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
                                 label:Text('Start Date',style: TextStyle(
                                     color: Colors.black38
                                 ),),
                               ),
                               keyboardType: TextInputType.text),
                         ),
                         //Year
                         SizedBox(width: 18,),
                         Container(
                           height: 55,
                           width: 175,
                           child: TextField(
                               controller: txtEndDate,

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
                                 label:Text('End Date',style: TextStyle(
                                     color: Colors.black38
                                 ),),
                               ),
                               keyboardType: TextInputType.text),
                         ),
                       ],
                     ),
                      TextField(
                          controller: txtdetails,

                          textInputAction: TextInputAction.done,
                          maxLines: 3,
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
                            label:Text('Details',style: TextStyle(
                                color: Colors.black38
                            ),),
                          ),
                          keyboardType: TextInputType.text),





                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(270, 310, 0, 0),
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
String  CompanyName ='';
String  JobTitle ='';
String  StartDate ='';
String  EndDate ='';
String  details ='';



