import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resumeapp/PersonalDetails.dart';
import 'package:resumeapp/ReferenceScreen.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffF1F1F1),
      body: Column(
        children: [
         Stack(
           children: [

             Container(
               height: 150,
               width: 420,
               color: Color(0xff5A52A5),
             ),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                   child: IconButton(onPressed: (){
                    setState(() {
                      Navigator.pushReplacementNamed(context, '/first');
                    });
                   }, icon: Icon(Icons.arrow_back_rounded,size: 30,color: Colors.white,)),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                   child: Text("Profile",style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.w600
                   ),),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(150, 30, 0, 0),
                   child: InkWell(
                     onTap: () {
                    Navigator.of(context).pushNamed('/CV');
                     },
                     child: Container(
                       child: Row(
                         children: [
                           SizedBox(width: 15,),
                           Icon(Icons.remove_red_eye,size: 27,color: Colors.white,),
                           Text("  View CV",style: TextStyle(
                               color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 15

                           ),),
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
             Padding(
               padding:  EdgeInsets.fromLTRB(0, 100, 0, 0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   InkWell(
                     onTap: () {
                       Navigator.pushNamed(context, '/personal');
                     },
                     child: Container(
                       height:100,
                       width: 110,
                       decoration: BoxDecoration(
                         boxShadow: [
                           BoxShadow(
                             offset: Offset(0,1),
                             spreadRadius: 1,
                             blurRadius: 0.5,
                             color: Colors.black12,
                           )
                         ],
                         color: Color(0xffFFFFFF),
                         borderRadius: BorderRadius.circular(6),

                       ),
                       child: Column(
                         children: [
                           SizedBox(height: 10,),
                           Icon(Icons.person,color: Color(0xff5A52A5),size: 40,),
                           Text("Personal\n Details",style: TextStyle(
                             color: Color(0xff353559),
                             fontWeight: FontWeight.w500,
                           ),)
                         ],
                       ),
                     ),
                   ),
                   InkWell(
                     onTap: () {
                       Navigator.of(context).pushNamed('/Education');
                     },
                     child: Container(
                       height:100,
                       width: 110,
                       decoration: BoxDecoration(
                         boxShadow: [

                           BoxShadow(
                             offset: Offset(0,1),

                             spreadRadius: 1,
                             blurRadius: 0.5,

                             color: Colors.black12,
                           )
                         ],
                         color: Color(0xffFFFFFF),
                         borderRadius: BorderRadius.circular(6),

                       ),
                       child: Column(
                         children: [
                           SizedBox(height: 10,),
                           Icon(Icons.school,color: Color(0xff5A52A5),size: 40,),
                           Text("Education",style: TextStyle(
                             color: Color(0xff353559),
                             fontWeight: FontWeight.w500,
                           ),)
                         ],
                       ),
                     ),
                   ),
                   InkWell(
                     onTap: () {
                       Navigator.of(context).pushNamed('/Experience');
                     },
                     child: Container(
                       height:100,
                       width: 110,
                       decoration: BoxDecoration(
                         boxShadow: [
                     
                           BoxShadow(
                             offset: Offset(0,1),
                     
                             spreadRadius: 1,
                             blurRadius: 0.5,
                     
                             color: Colors.black12,
                           )
                         ],
                         color: Color(0xffFFFFFF),
                         borderRadius: BorderRadius.circular(6),
                     
                       ),
                       child: Column(
                         children: [
                           SizedBox(height: 10,),
                           Icon(Icons.person_pin_outlined,color: Color(0xff5A52A5),size: 40,),
                           Text("Experience",style: TextStyle(
                             color: Color(0xff353559),
                             fontWeight: FontWeight.w500,
                           ),)
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),

           ],
         ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/Skills');
                },
                child: Container(
                  height:100,
                  width: 110,
                  decoration: BoxDecoration(
                    boxShadow: [

                      BoxShadow(
                        offset: Offset(0,1),

                        spreadRadius: 1,
                        blurRadius: 0.5,

                        color: Colors.black12,
                      )
                    ],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(6),

                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.security,color: Color(0xff5A52A5),size: 40,),
                      Text("Skills",style: TextStyle(
                        color: Color(0xff353559),
                        fontWeight: FontWeight.w500,
                      ),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/Objective');
                },
                child: Container(
                  height:100,
                  width: 110,
                  decoration: BoxDecoration(
                    boxShadow: [

                      BoxShadow(
                        offset: Offset(0,1),

                        spreadRadius: 1,
                        blurRadius: 0.5,

                        color: Colors.black12,
                      )
                    ],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(6),

                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.flag,color: Color(0xff5A52A5),size: 40,),
                      Text("Objective",style: TextStyle(
                        color: Color(0xff353559),
                        fontWeight: FontWeight.w500,
                      ),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/Reference');
                },
                child: Container(
                  height:100,
                  width: 110,
                  decoration: BoxDecoration(
                    boxShadow: [

                      BoxShadow(
                        offset: Offset(0,1),

                        spreadRadius: 1,
                        blurRadius: 0.5,

                        color: Colors.black12,
                      )
                    ],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(6),

                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.person_add_rounded,color: Color(0xff5A52A5),size: 40,),
                      Text("Reference",style: TextStyle(
                        color: Color(0xff353559),
                        fontWeight: FontWeight.w500,
                      ),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
            child: Row(
              children: [
                Text("More Sections",style: TextStyle(
                  color: Color(0xffEB878E),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/Project');
                },
                child: Container(
                  height:100,
                  width: 110,
                  decoration: BoxDecoration(
                    boxShadow: [

                      BoxShadow(
                        offset: Offset(0,1),

                        spreadRadius: 1,
                        blurRadius: 0.5,

                        color: Colors.black12,
                      )
                    ],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(6),

                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.folder_special_sharp,color: Color(0xff8695A1),size: 40,),
                      Text("Projects",style: TextStyle(
                        color: Color(0xff353559),
                        fontWeight: FontWeight.w500,
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/AddMore');
                },
                child: Container(
                  height:100,
                  width: 110,
                  decoration: BoxDecoration(
                    boxShadow: [

                      BoxShadow(
                        offset: Offset(0,1),

                        spreadRadius: 1,
                        blurRadius: 0.5,

                        color: Colors.black12,
                      )
                    ],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(6),

                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.add,color: Color(0xff8695A1),size: 40,),
                      Text("Add More\nSections",style: TextStyle(
                        color: Color(0xff353559),
                        fontWeight: FontWeight.w500,

                      ),)
                    ],
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
            child: Row(
              children: [
                Text("Manage Sections",style: TextStyle(
                  color: Color(0xffEB878E),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,

                ),),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/Rearrange');
                },
                child: Container(
                  height: 60,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [

                      BoxShadow(
                        offset: Offset(0,1),

                        spreadRadius: 1,
                        blurRadius: 0.5,

                        color: Colors.black12,
                      )
                    ],
                  ),child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.read_more,size: 40,color: Color(0xff8695A1),),
                    SizedBox(width: 10,),
                  Text("Rearrange/Headings",style: TextStyle(
                    color: Color(0xff353559),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),)
                  ],
                ),
                ),
              ),



            ],
          ),
          // SizedBox(height: 10,),
Text(RefeName),

        ],
      ),
    );
  }
}
