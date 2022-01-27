import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todochallange/pages/splash/presentation/controllers/splash_controller.dart';

class SplashView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());

    return Container(
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/fondodia2.jpg",)
                  ))),
          Center(child: CircularProgressIndicator(color: Colors.orange,))

        ],
      ),
    );
  }
}
