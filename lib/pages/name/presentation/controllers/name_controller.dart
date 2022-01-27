


import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class NameController extends GetxController{
  String name= "";

  void saveName(String name){
    GetStorage().write('name', name);
    Get.offAndToNamed("/home");
  }

}