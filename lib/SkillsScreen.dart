import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  TextEditingController txtSkills = TextEditingController();

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
          "Skills",
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
                  skills = txtSkills.text;
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
            ...List.generate(skillsname.length, (index) => textfield(index)),
            Padding(
              padding: const EdgeInsets.fromLTRB(270, 560, 0, 0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    s = s + 1;
                    TextEditingController skillname = TextEditingController();
                    skillsname.add(skillname);
                    ex();
                  });
                },
                child: Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color(0xff5A52A5),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                        blurRadius: 2,
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 28,
                        ),
                        Text(
                          "ADD",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column textfield(int index) {
    return Column(children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7))),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Skills ${s}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(250, 0, 0, 0),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            skillsname.removeAt(index);
                            if (s > 1) {
                              s = s - 1;
                            } else {
                              s = 1;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 23,
                        )),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Course
                      TextField(
                          controller: txtSkills,
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.greenAccent),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xff5A52A5),
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black26),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            label: Text(
                              'Skills',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ),
                          keyboardType: TextInputType.text),
                      //School
                    ],
                  ),
                ),
              ),
            ),
          ]);
  }
}

List skillname = [];
TextEditingController name = TextEditingController();
List<TextEditingController> skillsname = [];
String skills = '';
int s = 0;

Widget ex() {
  return Container(
    height: 20,
    width: 50,
    color: Colors.black,
  );
}
