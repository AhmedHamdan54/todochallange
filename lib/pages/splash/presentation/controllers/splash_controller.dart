

import 'package:get/get.dart';
import 'package:todochallange/pages/name/presentation/controllers/name_controller.dart';

class SplashController extends GetxController {

  final nameController= Get.put(NameController());
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    Future.delayed(Duration(seconds: 3), () {
      if(nameController.name!= "") {
        Get.offAndToNamed("/name");
      }else{
        Get.offAndToNamed("/home");
      }});
  }
  }

