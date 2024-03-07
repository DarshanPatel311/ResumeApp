import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'List.dart';

class frist extends StatefulWidget {
  const frist({super.key});

  @override
  State<frist> createState() => _fristState();
}

class _fristState extends State<frist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        backgroundColor:   Color(0xff5A52A5),
        automaticallyImplyLeading: false,
        title: Text("Resume Builder",style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body:  Column(
          children: [
               Stack(
                 children: [
                   Container(
                     height: 670,
                     child: SingleChildScrollView(
                       scrollDirection: Axis.vertical,
                       child: Column(
                        children: List.generate(ResumeBuilder.length, (index) => ditel(index
                        ),),

                                     ),
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 660, 0, 0),
                     child: Stack(
                       children: [
                         Container(
                           height: 60,
                           width: double.infinity,
                             color: Color(0xff5A52A5),
                           child: Row(
                             children: [
                               SizedBox(width: 10,),
                               Icon(Icons.sort,size: 35,color: Colors.white,),
                               Spacer(),
                               Icon(Icons.file_download_outlined,size: 35,color: Colors.white,),
                               SizedBox(width: 10,),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(170, 630, 170, 0),
                     child: Container(
                       height: 65,
                       width: 65,
                       decoration: BoxDecoration(
                           color: Color(0xffF0F1F3),
                           shape: BoxShape.circle

                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(176, 635, 0, 0),
                     child: InkWell(
                       onTap: () {
                         Navigator.pushNamed(context, '/home');
                       },
                       child: Container(
                         height: 53,
                         width: 53,
                         decoration: BoxDecoration(
                             color: Color(0xff5A52A5),
                             shape: BoxShape.circle

                         ),
                         child: Center(
                           child: Icon(Icons.add,color: Colors.white,size: 40,),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),






          ],
        ),



    );
  }
}
Widget ditel  (index )
{

  return Column(

    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Container(
          height: 140,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,1),
                spreadRadius: 1,
                blurRadius: 0.5,
                color: Colors.black12,
              )
            ],
          ),child:Column(

          children: [

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),child: Image.asset(ResumeBuilder[index]['Img'],fit: BoxFit.cover,),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start  ,
                  children: [
                    Text(ResumeBuilder[index]['Name'],style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    Text(ResumeBuilder[index]['Gmail'],style: TextStyle(
                        color: Colors.grey
                    ),),
                    Text(ResumeBuilder[index]['Time'],style: TextStyle(
                        color: Colors.grey
                    ),),

                  ],
                ),
              ],),

            Row(
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Row(

                        children: [
                          Text("  "),
                          Icon(Icons.edit,color:Color(0xff383C59),size: 20,),
                          Text("  Edit",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff383C59),
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Row(

                        children: [
                          Text("  "),
                          Icon(Icons.remove_red_eye,color:Color(0xff383C59),size: 20,),
                          Text("  View",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff383C59),
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 120,),
                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child:Icon(Icons.more_vert_rounded),
                  ),
                ),


              ],
            )
          ],
        ) ,


        ),
      ),

    ],
  );
}
