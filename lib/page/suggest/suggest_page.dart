import 'package:exchanges_crypto/page/suggest/suggest_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuggestPage extends GetView<SuggestController> {
  SuggestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'TOP CRYPTO'),
              Tab(text: 'TOP BO')
            ],

          ),
        ),
      ),
    );
  }
}

class SuggestPageBody extends StatefulWidget {
  const SuggestPageBody({Key? key}) : super(key: key);

  @override
  State<SuggestPageBody> createState() => _SuggestPageBodyState();
}

class _SuggestPageBodyState extends State<SuggestPageBody> with TickerProviderStateMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

