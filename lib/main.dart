import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './pages/home.dart';
import 'pages/counter.dart';
import 'controller/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: [
        GetPage(
          name: "/counter",
          page: () => CounterPage(),
          binding: BindingsBuilder.put(() => CounterController() ),
          bindings: [
            BindingsBuilder.put(() => CounterController()),
          ],
        ),
      ],
    );
  }
}
