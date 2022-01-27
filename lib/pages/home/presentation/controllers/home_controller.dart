

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todochallange/pages/todo/presentation/controllers/todo_controller.dart';


class HomeController extends GetxController{
  int selectedIndex=0;
  final todoController= Get.put(TodoController());
  String name="";
  void readName(){
    name = GetStorage().read<String>('name')!;
  }

  @override
  void onInit() {
    readName();
    todoController.readTodo();
    update();

  }
  void onItemTapped(int index) {
    selectedIndex = index;
    update();

  }

}