import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:todoapp/Models/models.dart';
import 'package:todoapp/Screens/Add_Task_Screens.dart';
import 'package:todoapp/utils/const.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/Provider/App_Provider.dart';





class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
        color: Color(0xFFFA5463),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: myRed,
            elevation: 0,
            title: const Text("ToDo App"),
            centerTitle: true,
          ),

          body: Consumer<todoProvider>(builder: (context,provider,child){
            return ListView.builder(
                itemCount: provider.Task.length,
                itemBuilder: (context,index){
                  return CheckboxListTile(
                    value: provider.Task[index].doneOrNot,
                    onChanged: (value){
                      provider.setDoOrNotAtTheIndex(index, value!);
                      // setState(() {
                      //   provider.Task[index].doneOrNot = value!;
                      // });
                    },
                    activeColor: Color(0xFFFA5463),
                    title: provider.Task[index].doneOrNot?
                    Text(provider.Task[index].title,
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    )
                        : Text(provider.Task[index].title,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  );
                }
            );
          },),


          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFFFA5463),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  Add_Task_Screens()),
              );
            },
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        )
    );
  }
}
