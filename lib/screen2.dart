import 'package:flutter/material.dart';
import 'package:untitled3/Constant/String_constant.dart';
import 'package:untitled3/Constant/color_constant.dart';
import 'package:untitled3/Screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colorconstant.grey,
                    size: 40,
                  ),
                  label: '',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_sharp,
                      color: Colorconstant.grey, size: 40),
                  label: 'like'),
              BottomNavigationBarItem(
                  icon:
                      Icon(Icons.thumb_up, color: Colorconstant.grey, size: 40),
                  label: 'massage'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded,
                      color: Colorconstant.orange, size: 40),
                  label: 'contect')
            ]),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Screen1()));
                              },
                              child: Icon(Icons.arrow_back_ios, size: 25)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            Stringconstant.MyProfile,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Text(
                        Stringconstant.Myhobbies,
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w500),
                      )),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                          child: Text(
                        Stringconstant.youhavethreehobbies,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colorconstant.cyanaccent),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 8),
                                child: Text(Stringconstant.Badminton,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              )),
                          SizedBox(
                            width: 80,
                          ),
                          Icon(Icons.edit_rounded, color: Colorconstant.grey),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.cancel_outlined,
                            color: Colorconstant.grey,
                            size: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        Stringconstant.Intermediatelevel,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colorconstant.cyanaccent),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 10),
                                child: Text(Stringconstant.Photography,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              )),
                          SizedBox(
                            width: 80,
                          ),
                          Icon(Icons.edit_rounded, color: Colorconstant.grey),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.cancel_outlined,
                            color: Colorconstant.grey,
                            size: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        Stringconstant.Ilovelandscape,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colorconstant.cyanaccent),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 8),
                                child: Text(Stringconstant.Surfing,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              )),
                          SizedBox(
                            width: 80,
                          ),
                          Icon(Icons.edit_rounded, color: Colorconstant.grey),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.cancel_outlined,
                            color: Colorconstant.grey,
                            size: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        Stringconstant.Itookupsurfing,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 2),
                          ),
                          child: Center(
                            child: Text(
                              Stringconstant.Save,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ))
                    ])),
          ),
        ));
  }
}
