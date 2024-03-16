import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rearrange extends StatefulWidget {
  const Rearrange({super.key});

  @override
  State<Rearrange> createState() => _RearrangeState();
}

class _RearrangeState extends State<Rearrange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xff5A52A5),
        title: Text("Rearrange / Edit Headings",style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),

      ),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),child: Row(
              children: [
                SizedBox(width: 7,),
                Icon(Icons.read_more,color: Color(0xff5A52A5),size: 28,),
                SizedBox(width: 17,),
                Text("Obejective",style: TextStyle(
                    fontWeight: FontWeight.w400,
                  color: Color(0xff353559),
                  fontSize: 17

                ),),
                Spacer(),
                Icon(Icons.edit),
                SizedBox(width: 10,),
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),child: Row(
              children: [
                SizedBox(width: 7,),
                Icon(Icons.read_more,color: Color(0xff5A52A5),size: 28,),
                SizedBox(width: 17,),
                Text("Experience",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff353559),
                    fontSize: 17

                ),),
                Spacer(),
                Icon(Icons.edit),
                SizedBox(width: 10,),
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),child: Row(
              children: [
                SizedBox(width: 7,),
                Icon(Icons.read_more,color: Color(0xff5A52A5),size: 28,),
                SizedBox(width: 17,),
                Text("Education",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff353559),
                    fontSize: 17

                ),),
                Spacer(),
                Icon(Icons.edit),
                SizedBox(width: 10,),
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),child: Row(
              children: [
                SizedBox(width: 7,),
                Icon(Icons.read_more,color: Color(0xff5A52A5),size: 28,),
                SizedBox(width: 17,),
                Text("Skills",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff353559),
                    fontSize: 17

                ),),
                Spacer(),
                Icon(Icons.edit),
                SizedBox(width: 10,),
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),child: Row(
              children: [
                SizedBox(width: 7,),
                Icon(Icons.read_more,color: Color(0xff5A52A5),size: 28,),
                SizedBox(width: 17,),
                Text("Projects",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff353559),
                    fontSize: 17

                ),),
                Spacer(),
                Icon(Icons.edit),
                SizedBox(width: 10,),
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),child: Row(
              children: [
                SizedBox(width: 7,),
                Icon(Icons.read_more,color: Color(0xff5A52A5),size: 28,),
                SizedBox(width: 17,),
                Text("Personal Details",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff353559),
                    fontSize: 17

                ),),
                Spacer(),
                Icon(Icons.edit),
                SizedBox(width: 10,),
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),child: Row(
              children: [
                SizedBox(width: 7,),
                Icon(Icons.read_more,color: Color(0xff5A52A5),size: 28,),
                SizedBox(width: 17,),
                Text("Reference",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff353559),
                    fontSize: 17

                ),),
                Spacer(),
                Icon(Icons.edit),
                SizedBox(width: 10,),
              ],
            ),
            ),
          ),
          SizedBox(height: 260,),
          Container(
            height: 40,
            width: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color:Color(0xff5A52A5),
            ),
            child: Center(
              child: Text("Reset Order",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
