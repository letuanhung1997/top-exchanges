import 'package:exchanges_crypto/page/home/home_controller.dart';
import 'package:exchanges_crypto/page/home/home_page.dart';
import 'package:exchanges_crypto/page/suggest/suggest_controller.dart';
import 'package:exchanges_crypto/page/suggest/suggest_page.dart';
import 'package:exchanges_crypto/splash_screen.dart';
import 'package:get/get.dart';

class AppRouter{

  static const String init = '/';
  static const String home = '/home';
  static const String suggest = '/suggest';
  static List<GetPage> routes = [
    GetPage(
        name: init,
        page: () => const SplashScreen()),
    GetPage(
        name: home,
        binding: BindingsBuilder(() {
          Get.lazyPut(() => HomeController());
        }),
        page: () => const HomePage()),
    GetPage(
        name: suggest,
        binding: BindingsBuilder(() {
          Get.lazyPut(() => SuggestController());
        }),
        page: () => const SuggestPage())
  ];
}