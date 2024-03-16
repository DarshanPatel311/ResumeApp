import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMore extends StatefulWidget {
  const AddMore({super.key});

  @override
  State<AddMore> createState() => _AddMoreState();
}

class _AddMoreState extends State<AddMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        title: Text("Add More Section",style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        actions: [
          Icon(Icons.info_sharp,size: 25,),
          SizedBox(width: 15,),
        ],
        backgroundColor:  Color(0xff5A52A5),
        leading: IconButton(onPressed: () {
          Navigator.of(context).pushReplacementNamed('/home');
        }, icon: Icon(Icons.arrow_back_outlined),color: Colors.white,),
      ),
      body: Column(


        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Reference                                              ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button1,activeColor: Color(0xff5A52A5), onChanged: (value) {
                     setState(() {
                       if(button1==true)
                       {
                         button1=false;

                       }
                       else
                       {
                         button1=true;

                       }
                     });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Additional Information                        ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button2,activeColor: Color(0xff5A52A5), onChanged: (value) {
                  setState(() {
                    if(button2==true)
                    {
                      button2=false;

                    }
                    else
                    {
                      button2=true;

                    }
                  });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Interests                                                ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button3,activeColor: Color(0xff5A52A5), onChanged: (value) {
                  setState(() {
                    if(button3==true)
                    {
                      button3=false;

                    }
                    else
                    {
                      button3=true;

                    }
                  });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Projects                                                 ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button4,activeColor: Color(0xff5A52A5), onChanged: (value) {
                  setState(() {
                    if(button4==true)
                    {
                      button4=false;

                    }
                    else
                    {
                      button4=true;

                    }
                  });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("language                                               ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button5,activeColor: Color(0xff5A52A5), onChanged: (value) {
                  setState(() {
                    if(button5==true)
                    {
                      button5=false;

                    }
                    else
                    {
                      button5=true;

                    }
                  });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Achievements & Awards                   ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button6,activeColor: Color(0xff5A52A5), onChanged: (value) {
                  setState(() {
                    if(button6==true)
                    {
                      button6=false;

                    }
                    else
                    {
                      button6=true;

                    }
                  });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Activities                                              ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button7,activeColor: Color(0xff5A52A5), onChanged: (value) {
                  setState(() {
                    if(button7==true)
                    {
                      button7=false;

                    }
                    else
                    {
                      button7=true;

                    }
                  });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Publication                                          ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button8,activeColor: Color(0xff5A52A5), onChanged: (value) {
                  setState(() {
                    if(button8==true)
                    {
                      button8=false;

                    }
                    else
                    {
                      button8=true;

                    }
                  });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Signature                                             ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8695A1),
                  ),),
                ),
                Switch(value: button9,activeColor: Color(0xff5A52A5), onChanged: (value) {
                  setState(() {
                    if(button9==true)
                    {
                      button9=false;

                    }
                    else
                    {
                      button9=true;

                    }
                  });
                },)
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 85, 0, 0),
            child: Container(
              height: 40,
              width: 160,
             decoration: BoxDecoration(
               color: Color(0xff5A52A5),
               borderRadius: BorderRadius.circular(20)
             ),child: Center(
               child: Text("Create new section",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
                         ),),
             ),
            ),
          )


        ],
      ),
    );
  }
}
bool button1=true;
bool button2=true;
bool button3=true;
bool button4=true;
bool button5=true;
bool button6=true;
bool button7=true;
bool button8=true;
bool button9=true;
