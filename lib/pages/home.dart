import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';
import 'counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME AZIZ FATKHU ROHMAN"),
      ),
      body: Center(
        child: ElevatedButton(
          // onPressed: () => Get.to(
          //  () => CounterPage(),
          //  binding: BindingsBuilder.put(() => CounterController()),
          // ),
          onPressed : () => Get.toNamed("/counter"),
          child: Text("Counter Page >>"),
        ),
      ),
    );
  }
}
