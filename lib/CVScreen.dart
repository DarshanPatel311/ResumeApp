import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:pdf/pdf.dart";
import 'package:pdf/widgets.dart' as pd;

import "package:printing/printing.dart";

class CV extends StatefulWidget {
  const CV({super.key});

  @override
  State<CV> createState() => _CVState();
}

class _CVState extends State<CV> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),


      appBar: AppBar(
      backgroundColor:   Color(0xff5A52A5),
        title: Row(
          children: [
            Text("Choose Template"),
          ],
        ),

      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 600,
              width: 390,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: 160,
                    color: Color(0xff1A1B1D),
                  ),
                  //img
                  Container(
                    height: 160,
                    width: 160,
                    color: Colors.white,
                    child: Image.asset('assets/img/download.jpg',fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 150, 0, 0),
                    child: Container(
                      height: 25,
                      width: 120,
                      color: Color(0xff5A52A5),
                      child: Center(child: Text("Flutter Devloper",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 190, 0, 0),
                    child: Text("EDUCATION",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 215, 0, 0),
                    child: Container(
                      height: 2,
                      width: 30,
                      color: Color(0xff5A52A5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 223, 0, 0),
                    child: Text("Enter Your Major",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 240, 0, 0),
                    child: Text('Name of Your University\n2005-2006',style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                    child: Container(
                      height: 300,
                      width: 160,
                      color: Color(0xffEBEBEB),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
                    child: Container(
                      height: 160,
                      width: 260,
                      color: Color(0xffEBEBEB),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text("Darshan Patel",style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(35, 2, 0, 0),
                                child: Container(
                                  height: 13,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xff5A52A5),
                                    borderRadius: BorderRadius.circular(3),
                                  ),child: Center(child: Text("App Devloper",style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),)),

                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(38, 10, 0, 0),
                                child: Center(child: Text("PROFILE",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                                                ),)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(38, 3, 0, 0),
                                child: Container(
                                  height: 3,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xff5A52A5),
                                    borderRadius: BorderRadius.circular(3),
                                  ),

                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(38, 8, 0, 0),
                                child: Center(child: Text("A paragraph is a series of sentences that\n are organized and coherent, and are all \nrelated to a single topic. Almost every piece of\n writing you do that is longer than a few sentences \nshould be organized into paragraphs.",style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w800,
                                ),)),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 180, 0, 0),
                    child: Text("WORK EXPERIENCE",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 205, 0, 0),
                    child: Container(
                      height: 3,
                      width: 40,
                     decoration: BoxDecoration(
                       color: Color(0xff5A52A5),
                       borderRadius: BorderRadius.circular(5)
                     ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(182, 215, 0, 0),
                    child: Text("Enter job Position Here",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 235, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff5A52A5),
                            borderRadius: BorderRadius.circular(3)
                          ),
                          child: Center(child: Text("Present",style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),)),
                        ),
                        Text("  Company Name/Location",style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 255, 0, 0),
                    child: Row(
                      children: [

                        Text("A paragraph is a series of sentences \nthat are organized and coherent, ",style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(182, 305, 0, 0),
                    child: Text("Enter job Position Here",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 325, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color(0xff5A52A5),
                              borderRadius: BorderRadius.circular(3)
                          ),
                          child: Center(child: Text("2017-2018",style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),)),
                        ),
                        Text("  Company Name/Location",style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 345, 0, 0),
                    child: Row(
                      children: [

                        Text("A paragraph is a series of sentences \nthat are organized and coherent, ",style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 390, 0, 0),
                    child: Text("REFERENCE",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 420, 0, 0),
                    child: Container(
                      height: 3,
                      width: 40,
                      color: Color(0xff5A52A5),
                    )
                  ),
                  const Padding(
                      padding:  EdgeInsets.fromLTRB(180, 435, 0, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Darshan K.Pattel",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13
                              ),),
                            ],
                          ),
                          SizedBox(height: 2,),
                          Row(
                            children: [
                              Text("Jay Goga IT PVT",style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Phone:+91 9737890804",style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 11
                              ),),
                            ],
                          ),
                        ],
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 490, 0, 0),
                    child: Text("INTERESTS",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(180, 520, 0, 0),
                      child: Container(
                        height: 3,
                        width: 40,
                        color: Color(0xff5A52A5),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(170, 540, 0, 0),
                      child: Container(
                        height: 40,
                        width: 220,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.airplanemode_on_sharp,color:Color(0xff5A52A5),),
                                Text('Travel',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13
                                ),)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.headphones,color:Color(0xff5A52A5),),
                                Text('Music',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13
                                ),)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.edit_note_sharp,color:Color(0xff5A52A5),),
                                Text('Writing',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13
                                ),)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.drive_eta_outlined,color:Color(0xff5A52A5),),
                                Text('Driving',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 320, 0, 0),
                    child: Text("EXPERTISE",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(10, 350, 0, 0),
                      child: Container(
                        height: 3,
                        width: 40,
                        color: Color(0xff5A52A5),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 370, 0, 0),
                    child: Row(
                      children: [
                        Text("C Language  ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                        Container(
                          height: 3,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(95, 378, 0, 0),
                    child: Container(
                      height: 3,
                      width: 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          color: Color(0xff5A52A5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 400, 0, 0),
                    child: Row(
                      children: [
                        Text("Dart               ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                        Container(
                          height: 3,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(95, 407, 0, 0),
                    child: Container(
                      height: 3,
                      width: 35,
                     decoration: BoxDecoration(
                       color: Color(0xff5A52A5),
                       borderRadius: BorderRadius.circular(5)
                     ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 430, 0, 0),
                    child: Row(
                      children: [
                        Text("Flutter           ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                        Container(
                          height: 3,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(95, 437, 0, 0),
                    child: Container(
                      height: 3,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xff5A52A5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 460, 0, 0),
                    child: Container(
                      height: 140,
                      width: 40,
                      color:  Color(0xff5A52A5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.call),
                          Icon(Icons.email),
                          Icon(Icons.location_city),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(55, 470, 0, 0),
                    child: Text("Phone\n+91 7016587495",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(55, 515, 0, 0),
                    child: Text("Email\ndkp31@gmail.com",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(55, 565, 0, 0),
                    child: Text("Area\n201Uma Plaza.surat",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),),
                  ),


                  
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5A52A5),

                      ),child: Icon(Icons.color_lens,color: Colors.white,size: 35,),
                    ),
                    Text("Theme",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5A52A5),

                      ),child: Icon(Icons.send,color: Colors.white,size: 35,),
                    ),
                    Text("Send",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5A52A5),

                      ),child: Icon(Icons.print,color: Colors.white,size: 35,),
                    ),
                    Text("Print",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),)
                  ],
                ),
                InkWell(
                  onTap: () async {
                      final pdf = pd.Document();

                      pdf.addPage(pd.Page(
                          pageFormat: PdfPageFormat.a4,
                          build: (pd.Context context) {
                            return pd.Center(
                              child: pd.Container(
                                height: 3508,
                                width: 2480,
                                color: PdfColors.white,
                                child: pd.Stack(
                                  children: [
                                   pd. Container(
                                      height: 300,
                                      width: 160,
                                      color: PdfColors.black,
                                    ),
                                    //img
                                   pd. Container(
                                      height: 160,
                                      width: 160,
                                     color: PdfColors.yellow,
                                      // child: Image.asset('assets/img/download.jpg',fit: BoxFit.fill,),
                                    ),
                                   pd. Padding(
                                      padding: pd.EdgeInsets.fromLTRB(20, 150, 0, 0),
                                      child: pd.Container(
                                        height: 25,
                                        width: 120,
                                        color: PdfColors.purple100,

                                        child: pd.Center(child: pd.Text("Flutter Devloper",style: pd.TextStyle(
                                            fontWeight: pd.FontWeight.bold,
                                          color: PdfColors.white,
                                        ),)),
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(20, 190, 0, 0),
                                      child: pd.Text("EDUCATION",style: pd.TextStyle(
                                        color: PdfColors.white,
                                        fontWeight:pd.FontWeight.bold,
                                      ),),

                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(22, 215, 0, 0),
                                      child:pd. Container(
                                        height: 2,
                                        width: 30,
                                        color: PdfColors.purple100,
                                      ),
                                    ),
                                  pd.  Padding(
                                      padding: pd. EdgeInsets.fromLTRB(22, 223, 0, 0),
                                      child: pd.Text("Enter Your Major",style: pd.TextStyle(
                                        color: PdfColors.white,
                                        fontWeight:pd. FontWeight.bold,
                                      ),),
                                    ),
                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(22, 240, 0, 0),
                                      child: pd.Text('Name of Your University\n2005-2006',style: pd.TextStyle(
                                        color: PdfColors.white,
                                        fontSize: 11,
                                      ),),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(0, 300, 0, 0),
                                      child: pd.Container(
                                        height: 300,
                                        width: 160,
                                        color: PdfColors.grey300,
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(160, 0, 0, 0),
                                      child: pd.Container(
                                        height: 160,
                                        width: 260,
                                        color: PdfColors.grey300,
                                        child: pd.Column(
                                          children: [
                                           pd. Padding(
                                              padding: pd. EdgeInsets.fromLTRB(0, 10, 0, 0),
                                              child: pd.Text("Darshan Patel",style: pd.TextStyle(
                                                fontWeight: pd.FontWeight.bold,
                                                fontSize: 25,
                                              ),),
                                            ),
                                           pd. Row(
                                              children: [
                                                pd.Padding(
                                                  padding: pd. EdgeInsets.fromLTRB(35, 2, 0, 0),
                                                  child: pd.Container(
                                                    height: 13,
                                                    width: 100,
                                                    decoration: pd.BoxDecoration(
                                                      color: PdfColors.purple100,
                                                      borderRadius: pd.BorderRadius.circular(3),
                                                    ),child: pd.Center(child: pd.Text("App Devloper",style: pd.TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: pd.FontWeight.bold,
                                                    color: PdfColors.white,
                                                  ),)),

                                                  ),
                                                ),
                                              ],
                                            ),
                                           pd. Row(
                                              children: [
                                               pd. Padding(
                                                  padding: pd. EdgeInsets.fromLTRB(38, 10, 0, 0),
                                                  child: pd.Center(child: pd.Text("PROFILE",style: pd.TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:pd. FontWeight.bold,
                                                  ),)),
                                                ),
                                              ],
                                            ),
                                           pd. Row(
                                              children: [
                                                pd.Padding(
                                                  padding: pd. EdgeInsets.fromLTRB(38, 3, 0, 0),
                                                  child:pd. Container(
                                                    height: 3,
                                                    width: 30,
                                                    decoration:pd. BoxDecoration(
                                                      color: PdfColors.purple100,
                                                      borderRadius: pd.BorderRadius.circular(3),
                                                    ),

                                                  ),
                                                ),
                                              ],
                                            ),
                                           pd. Row(
                                              children: [
                                                pd.Padding(
                                                  padding: pd. EdgeInsets.fromLTRB(38, 8, 0, 0),
                                                  child:pd. Center(child:pd. Text("A paragraph is a series of sentences that\n are organized and coherent, and are all \nrelated to a single topic. Almost every piece of\n writing you do that is longer than a few sentences \nshould be organized into paragraphs.",style: pd.TextStyle(
                                                    fontSize: 8,
                                                    fontWeight:pd. FontWeight.bold,
                                                  ),)),
                                                ),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(180, 180, 0, 0),
                                      child: pd.Text("WORK EXPERIENCE",style: pd.TextStyle(
                                        fontWeight:pd. FontWeight.bold,
                                        fontSize: 16,
                                      ),),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(180, 205, 0, 0),
                                      child:pd. Container(
                                        height: 3,
                                        width: 40,
                                        decoration: pd.BoxDecoration(
                                            color: PdfColors.purple100,
                                            borderRadius: pd.BorderRadius.circular(5)
                                        ),
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(182, 215, 0, 0),
                                      child: pd.Text("Enter job Position Here",style: pd.TextStyle(
                                        fontWeight: pd.FontWeight.bold,
                                        fontSize: 12,
                                      ),),
                                    ),
                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(180, 235, 0, 0),
                                      child: pd.Row(
                                        children: [
                                          pd.Container(
                                            height: 15,
                                            width: 50,
                                            decoration: pd.BoxDecoration(
                                                color: PdfColors.purple100,
                                                borderRadius:pd. BorderRadius.circular(3)
                                            ),
                                            child:pd. Center(child:pd. Text("Present",style: pd.TextStyle(
                                              fontSize: 11,
                                              fontWeight: pd.FontWeight.bold,
                                              color: PdfColors.white,
                                            ),)),
                                          ),
                                          pd.Text("  Company Name/Location",style:pd. TextStyle(
                                            fontSize: 12,
                                            fontWeight: pd.FontWeight.bold,
                                          ),),

                                        ],
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(180, 255, 0, 0),
                                      child:pd. Row(
                                        children: [

                                          pd.Text("A paragraph is a series of sentences \nthat are organized and coherent, ",style: pd.TextStyle(
                                            fontSize: 12,
                                            fontWeight: pd.FontWeight.bold,
                                          ),),

                                        ],
                                      ),
                                    ),

                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(182, 305, 0, 0),
                                      child:pd. Text("Enter job Position Here",style: pd.TextStyle(
                                        fontWeight:pd. FontWeight.bold,
                                        fontSize: 12,
                                      ),),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(180, 325, 0, 0),
                                      child:pd. Row(
                                        children: [
                                         pd. Container(
                                            height: 15,
                                            width: 60,
                                            decoration:pd. BoxDecoration(
                                                color: PdfColors.purple100,
                                                borderRadius: pd.BorderRadius.circular(3)
                                            ),
                                            child: pd.Center(child: pd.Text("2017-2018",style: pd.TextStyle(
                                              fontSize: 10,
                                              fontWeight: pd.FontWeight.bold,
                                              color: PdfColors.white,
                                            ),)),
                                          ),
                                          pd.Text("  Company Name/Location",style: pd.TextStyle(
                                            fontSize: 12,
                                            fontWeight: pd.FontWeight.bold,
                                          ),),

                                        ],
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(180, 345, 0, 0),
                                      child: pd.Row(
                                        children: [

                                          pd.Text("A paragraph is a series of sentences \nthat are organized and coherent, ",style: pd.TextStyle(
                                            fontSize: 12,
                                            fontWeight: pd.FontWeight.bold,
                                          ),),

                                        ],
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(180, 390, 0, 0),
                                      child:pd. Text("REFERENCE",style: pd.TextStyle(
                                        fontWeight: pd.FontWeight.bold,
                                        fontSize: 16,
                                      ),),
                                    ),
                                    pd.Padding(
                                        padding: pd. EdgeInsets.fromLTRB(180, 420, 0, 0),
                                        child:pd. Container(
                                          height: 3,
                                          width: 40,
                                          color: PdfColors.purple100,
                                        )
                                    ),
                                    pd. Padding(
                                        padding:  pd.EdgeInsets.fromLTRB(180, 435, 0, 0),
                                        child: pd.Column(
                                          children: [
                                           pd. Row(
                                              children: [
                                               pd. Text("Darshan K.Pattel",style:pd. TextStyle(
                                                    fontWeight: pd.FontWeight.bold,
                                                    fontSize: 13
                                                ),),
                                              ],
                                            ),
                                           pd. SizedBox(height: 2,),
                                           pd. Row(
                                              children: [
                                                pd.Text("Jay Goga IT PVT",style: pd.TextStyle(
                                                    fontWeight:pd. FontWeight.bold,
                                                    fontSize: 12
                                                ),),
                                              ],
                                            ),
                                            pd.Row(
                                              children: [
                                                pd.Text("Phone:+91 9737890804",style: pd.TextStyle(
                                                    fontWeight: pd.FontWeight.bold,
                                                    fontSize: 11
                                                ),),
                                              ],
                                            ),
                                          ],
                                        )
                                    ),

                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(180, 490, 0, 0),
                                      child: pd.Text("INTERESTS",style: pd.TextStyle(
                                        fontWeight:pd. FontWeight.bold,
                                        fontSize: 16,
                                      ),),
                                    ),
                                   pd. Padding(
                                        padding: pd. EdgeInsets.fromLTRB(180, 520, 0, 0),
                                        child: pd.Container(
                                          height: 3,
                                          width: 40,
                                          color: PdfColors.purple100,
                                        )
                                    ),
                                    // pd.Padding(
                                    //   padding: pd. EdgeInsets.fromLTRB(170, 540, 0, 0),
                                    //   child: pd.Container(
                                    //     height: 40,
                                    //     width: 220,
                                    //     color: PdfColors.white,
                                    //     child:pd. Row(
                                    //       mainAxisAlignment:pd. MainAxisAlignment.spaceEvenly,
                                    //       children: [
                                    // //         pd.Column(
                                    // //           children: [
                                    // //             pd.Icon(pd.Icons.airplanemode_on_sharp,color: PdfColors.purple100,),
                                    // //             pd.Text('Travel',style: pd.TextStyle(
                                    // //                 fontWeight: pd.FontWeight.bold,
                                    // //                 fontSize: 13
                                    // //             ),)
                                    // //           ],
                                    // //         ),
                                    // //
                                    // //        pd. Column(
                                    // //           children: [
                                    // //            pd. Icon(Icons.headphones,color:  PdfColors.white,),
                                    // //             pd.Text('Music',style: pd.TextStyle(
                                    // //                 fontWeight: pd.FontWeight.bold,
                                    // //                 fontSize: 13
                                    // //             ),)
                                    // //           ],
                                    // //         ),
                                    // //         Column(
                                    // //           children: [
                                    // //             Icon(Icons.edit_note_sharp,color:Color(0xff5A52A5),),
                                    // //             Text('Writing',style: TextStyle(
                                    // //                 fontWeight: FontWeight.bold,
                                    // //                 fontSize: 13
                                    // //             ),)
                                    // //           ],
                                    // //         ),
                                    // //         Column(
                                    // //           children: [
                                    // //             Icon(Icons.drive_eta_outlined,color:Color(0xff5A52A5),),
                                    // //             Text('Driving',style: TextStyle(
                                    // //                 fontWeight: FontWeight.bold,
                                    // //                 fontSize: 13
                                    // //             ),)
                                    // //           ],
                                    // //         ),
                                    // //       ],
                                    // //     ),
                                    // //   ),
                                    // // ),

                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(10, 320, 0, 0),
                                      child: pd.Text("EXPERTISE",style: pd.TextStyle(
                                        fontWeight: pd.FontWeight.bold,
                                        fontSize: 16,
                                      ),),
                                    ),
                                    pd.Padding(
                                        padding: pd. EdgeInsets.fromLTRB(10, 350, 0, 0),
                                        child:pd. Container(
                                          height: 3,
                                          width: 40,
                                          color: PdfColors.purple100,
                                        )
                                    ),
                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(10, 370, 0, 0),
                                      child: pd.Row(
                                        children: [
                                          pd.Text("C Language  ",style:pd. TextStyle(
                                            fontWeight: pd.FontWeight.bold,
                                            fontSize: 15,
                                          ),),
                                         pd. Container(
                                            height: 3,
                                            width: 50,
                                            decoration: pd.BoxDecoration(
                                                color: PdfColors.grey,
                                                borderRadius: pd.BorderRadius.circular(5)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(95, 378, 0, 0),
                                      child: pd.Container(
                                        height: 3,
                                        width: 43,
                                        decoration: pd.BoxDecoration(
                                          borderRadius:pd. BorderRadius.circular(5),
                                          color: PdfColors.purple100,
                                        ),
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(10, 400, 0, 0),
                                      child:pd. Row(
                                        children: [
                                          pd.Text("Dart               ",style:pd. TextStyle(
                                            fontWeight: pd.FontWeight.bold,
                                            fontSize: 15,
                                          ),),
                                          pd.Container(
                                            height: 3,
                                            width: 50,
                                            decoration: pd.BoxDecoration(
                                                color: PdfColors.grey,
                                                borderRadius: pd.BorderRadius.circular(5)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(95, 407, 0, 0),
                                      child: pd.Container(
                                        height: 3,
                                        width: 35,
                                        decoration: pd.BoxDecoration(
                                            color: PdfColors.purple100,
                                            borderRadius: pd.BorderRadius.circular(5)
                                        ),
                                      ),
                                    ),
                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(10, 430, 0, 0),
                                      child:pd. Row(
                                        children: [
                                          pd.Text("Flutter           ",style: pd.TextStyle(
                                            fontWeight: pd.FontWeight.bold,
                                            fontSize: 15,
                                          ),),
                                          pd.Container(
                                            height: 3,
                                            width: 50,
                                            decoration:pd. BoxDecoration(
                                              color: PdfColors.grey,
                                              borderRadius:pd. BorderRadius.circular(5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(95, 437, 0, 0),
                                      child: pd.Container(
                                        height: 3,
                                        width: 35,
                                        decoration: pd.BoxDecoration(
                                          color: PdfColors.purple100,
                                          borderRadius: pd.BorderRadius.circular(5),
                                        ),
                                      ),
                                    ),
                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(10, 460, 0, 0),
                                      child: pd.Container(
                                        height: 140,
                                        width: 40,
                                        color: PdfColors.purple100,
                                        child: pd.Column(
                                          mainAxisAlignment: pd.MainAxisAlignment.spaceEvenly,
                                          children: [
                                            // Icon(Icons.call),
                                            // Icon(Icons.email),
                                            // Icon(Icons.location_city),
                                          ],
                                        ),
                                      ),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(55, 470, 0, 0),
                                      child: pd.Text("Phone\n+91 7016587495",style: pd.TextStyle(
                                        color: PdfColors.black,
                                        fontWeight: pd.FontWeight.bold,
                                        fontSize: 13,
                                      ),),
                                    ),
                                    pd.Padding(
                                      padding: pd. EdgeInsets.fromLTRB(55, 515, 0, 0),
                                      child:pd. Text("Email\ndkp31@gmail.com",style:pd. TextStyle(
                                        color: PdfColors.black,
                                        fontWeight: pd.FontWeight.bold,
                                        fontSize: 12,
                                      ),),
                                    ),
                                   pd. Padding(
                                      padding: pd. EdgeInsets.fromLTRB(55, 565, 0, 0),
                                      child: pd.Text("Area\n201Uma Plaza.surat",style:pd. TextStyle(
                                        color: PdfColors.black,
                                        fontWeight: pd.FontWeight.bold,
                                        fontSize: 11,
                                      ),),
                                    ),



                                  ],
                                ),
                              ),
                            ); // Center
                          })); // Pagege
                      await Printing.layoutPdf(
                        onLayout: (format) => pdf.save(),
                      );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff5A52A5),

                        ),child: Icon(Icons.picture_as_pdf_rounded,color: Colors.white,size: 35,),
                      ),
                      Text("Export",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),)
                    ],
                  ),
                ),
       // Page
                Column(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5A52A5),

                      ),child: Icon(Icons.share,color: Colors.white,size: 35,),
                    ),
                    Text("Share",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
