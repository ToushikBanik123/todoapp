import 'package:todoapp/Models/models.dart';
import 'package:flutter/foundation.dart';


class todoProvider with ChangeNotifier{

  List<TaskObject> _Task = [
    // TaskObject(title: 'wake up', doneOrNot: false),
    // TaskObject(title: 'have breakfast', doneOrNot: false),
    // TaskObject(title: 'brush your teeth', doneOrNot: false),
    // TaskObject(title: 'take a shower', doneOrNot: false),
    // TaskObject(title: 'take a bath', doneOrNot: false),
    // TaskObject(title: 'get dressed', doneOrNot: false),
    // TaskObject(title: 'go to school', doneOrNot: false),
    // TaskObject(title: 'study English', doneOrNot: false),
    // TaskObject(title: 'study Bengali', doneOrNot: false),
  ];


  get Task => _Task;


  void setDoOrNotAtTheIndex(int index,bool value){
    _Task[index].doneOrNot = value!;
    notifyListeners();
  }


  void setANewTask(String value){
    _Task.add(TaskObject(title: value , doneOrNot: false),);
    notifyListeners();
  }

}