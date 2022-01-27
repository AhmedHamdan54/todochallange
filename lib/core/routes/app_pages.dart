import 'package:get/get.dart';
import 'package:todochallange/pages/home/presentation/view/home_view.dart';
import 'package:todochallange/pages/name/presentation/views/name_view.dart';
import 'package:todochallange/pages/splash/presentation/views/splash_view.dart';
import 'package:todochallange/pages/todo/presentation/views/todo_view.dart';


part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),

    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: Routes.TODO,
      page: () => TodoView(),
    ),
    GetPage(
      name: Routes.NAME,
      page: () => NameView(),
    ),
  ];
}