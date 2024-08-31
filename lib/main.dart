import 'package:challenge_flutter_ui_30/home_page.dart';
import 'package:challenge_flutter_ui_30/view/day_01/day_01.dart';
import 'package:challenge_flutter_ui_30/view/day_01/day_01_02.dart';
import 'package:challenge_flutter_ui_30/view/day_02/day_02.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/01',
          page: () => const SocializeChat(),
          children: [GetPage(name: '/01.2', page: ()=> ModalUser())]
        ),
        GetPage(
            name: '/02',
            page: () => const Memories(),
            children: []
        )
      ],
    );
  }
}
