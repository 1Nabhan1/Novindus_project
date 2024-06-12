import 'package:get/get.dart';
import 'package:nov_project/presentation/Register_screen/register_screen.dart';
import 'package:nov_project/presentation/home_screen/Home_screen.dart';
import 'package:nov_project/presentation/log_in_screen/Log_in.dart';
import 'package:nov_project/routes/PageList/PageList.dart';

class AppRoutes {
  static var pagelist = [
    GetPage(name: Pagelist.LogIn, page: () => LogIn()),
    GetPage(name: Pagelist.HomeScreen, page: () => HomeScreen(),),
    GetPage(name: Pagelist.Register_screen, page: () => RegisterScreen(),)
  ];
}