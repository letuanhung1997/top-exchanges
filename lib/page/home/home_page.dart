import 'package:exchanges_crypto/page/home/home_controller.dart';
import 'package:exchanges_crypto/src/router.dart';
import 'package:exchanges_crypto/widget/item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFF2F3641), Color(0xFF3A4250), Color(0xFF444F5F)],
          stops: [0.5, 0.85, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 36),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF444F5F), Color(0xFF4F5D6B), Color(0xFF444F5F)],
                    stops: [0.5, 0.85, 1.0],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Column(
                        children: [
                          const Spacer(),
                          SizedBox(
                            width: (MediaQuery.of(context).size.width - 40) / 2,
                            child: const Center(
                              child: Text(
                                'TOP EXCHANGES',
                                style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 32,
                            width: 150,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [Color(0xFF734295), Color(0xFF642D8A), Color(0xFF8356a1)],
                                    stops: [0.2, 0.7, 1.0]),
                                borderRadius: BorderRadius.circular(32)),
                            child: MaterialButton(
                              onPressed: () async {
                                Get.toNamed(AppRouter.suggest);
                              },
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                              child: const Center(
                                child: Text(
                                  'SEE NOW',
                                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                    // Image.asset(name)
                  ],
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Item(
                child: Container(),
                title: 'What\'s Hot',
                description: 'Get the latest updates',
              )
            ],
          ),
        ),
      ),
    );
  }
}
