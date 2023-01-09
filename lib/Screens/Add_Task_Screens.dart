import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:todoapp/utils/const.dart';
import 'package:todoapp/Provider/App_Provider.dart';
import 'package:provider/provider.dart';


class Add_Task_Screens extends StatelessWidget {
   Add_Task_Screens({Key? key}) : super(key: key);

  late String _Task = "";
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: myRed,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: myRed,
          title: Text("Enter Your Task"),
          elevation: 0,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter Your Task",
              style: TextStyle(
                  color: myRed,
                  fontSize: 22
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 300,
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: myRed),
                borderRadius: BorderRadius.circular(20),
              ),
              //alignment: Alignment.center,
              child: TextField(
                onChanged: (value){
                  //print(value);
                  _Task = value;
                },
                autofocus: true,
                style: TextStyle(color: Colors.grey),

                decoration: InputDecoration(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none

                ),
              ),
            ),

          ],
        ),

        floatingActionButton: Consumer<todoProvider>(builder: (context,provider,child){
          return GestureDetector(
            onTap: (){
              provider.setANewTask(_Task);
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: myRed,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text("Add Task",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          );
        },),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      ),
    );
  }
}

