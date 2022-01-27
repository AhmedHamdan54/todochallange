import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:todochallange/pages/todo/data/models/todo_model.dart';

class TodoController extends GetxController {
  List <Todo> todoList = [];
  List <Todo> storedToList = [];
  final now = new DateTime.now();
  String name="";

  void readName(){
    name = GetStorage().read<String>('name')!;
  }
  @override
  void onInit() {
    super.onInit();
    readName();
  }
  void addTodo(String todo){
    String formatter = DateFormat('jm').format(now);
    todoList.add(Todo(text: todo, date:formatter));
    GetStorage().write('todos', todoList.toList());
    update();

  }
  void readTodo() async{
    if(todoList.isNotEmpty){
      List storedToList = await GetStorage().read<List>('todos')!;
      if(storedToList.isNotEmpty){
        todoList = storedToList.map((e) => Todo.fromJson(e)).toList();
        update();
      }
    }



  }
  void deleteTodo(int index){
    todoList.removeAt(index);
    GetStorage().write('todos', todoList.toList());
    update();
  }
}