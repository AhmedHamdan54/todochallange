import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/init_app.dart';
import 'core/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,

      getPages: AppPages.routes,

      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
        primaryColor:const Color(0xFFdf7c0d),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xFFdf7c0d),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFdf7c0d),
          sizeConstraints: BoxConstraints(
            minWidth: 80,
            minHeight: 80,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}





