import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}



class TaskObject{
  final String title;
  late bool doneOrNot;

  TaskObject({
    required this.title ,
    required this.doneOrNot
  });

}




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TaskObject> Task = [
    TaskObject(title: 'wake up', doneOrNot: false),
    TaskObject(title: 'have breakfast', doneOrNot: false),
    TaskObject(title: 'brush your teeth', doneOrNot: false),
    TaskObject(title: 'take a shower', doneOrNot: false),
    TaskObject(title: 'take a bath', doneOrNot: false),
    TaskObject(title: 'get dressed', doneOrNot: false),
    TaskObject(title: 'go to school', doneOrNot: false),
    TaskObject(title: 'study English', doneOrNot: false),
    TaskObject(title: 'study Bengali', doneOrNot: false),
  ];



  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
        color: Color(0xFFFA5463),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFFFA5463),
            elevation: 0,
            title: const Text("ToDo App"),
            centerTitle: true,
          ),

          body: ListView.builder(
            itemCount: Task.length,
              itemBuilder: (context,index){
                return CheckboxListTile(
                    value: Task[index].doneOrNot,
                    onChanged: (value){
                      setState(() {
                        Task[index].doneOrNot = value!;
                      });
                    },
                    activeColor: Color(0xFFFA5463),
                    title: Task[index].doneOrNot?
                    Text(Task[index].title,
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    )
                        : Text(Task[index].title,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                );
            }
          ),


          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFFFA5463),
            onPressed: (){
            },
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        )
    );
  }
}
