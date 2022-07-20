import 'package:flutter/material.dart';
import 'package:untitled3/Constant/String_constant.dart';
import 'package:untitled3/Constant/color_constant.dart';
import 'package:untitled3/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                icon: Icon(Icons.thumb_up, color: Colorconstant.grey, size: 40),
                label: 'massage'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded,
                    color: Colorconstant.orange, size: 40),
                label: 'contect')
          ]),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Icon(Icons.arrow_back_ios, size: 25),
              SizedBox(
                width: 10,
              ),
              Text(
                Stringconstant.MyProfile,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              Stringconstant.Edithobbies,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            Stringconstant.Letsdiscuss,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: Stringconstant.searchforhobbies,
                hintStyle: TextStyle(fontSize: 20, color: Colorconstant.grey),
                prefixIcon: Icon(Icons.search_sharp, size: 35),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colorconstant.cyanaccent),
                  child: Center(
                    child: Text(Stringconstant.Photography,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  )),
              Spacer(),
              Icon(
                Icons.cancel_outlined,
                color: Colorconstant.grey,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            Stringconstant.Adddescription,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colorconstant.black)),
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(Stringconstant.Ilovelandscape,
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen2()));
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colorconstant.orange,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        color: Colorconstant.orange1,
                        blurRadius: 10,
                        offset: Offset(2, 6))
                  ]),
              child: Center(
                  child: Text(
                Stringconstant.Save,
                style: TextStyle(
                    fontSize: 25,
                    color: Colorconstant.white,
                    fontWeight: FontWeight.bold),
              )),
            ),
          )
        ]),
      ),
    ));
  }
}
