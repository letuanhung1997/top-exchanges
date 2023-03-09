import 'package:exchanges_crypto/src/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.toNamed(AppRouter.home);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}