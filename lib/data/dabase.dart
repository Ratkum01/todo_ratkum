import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

// run the metod is this is the ist time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Like', false],
      ['Like', false]
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the DataBAse
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
