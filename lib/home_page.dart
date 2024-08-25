import 'package:challenge_flutter_ui_30/utils/day_block.dart';
import 'package:challenge_flutter_ui_30/utils/ntext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListDayApp(),
    );
  }
}

class ListDayApp extends StatelessWidget {
  const ListDayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: NText(
            text: 'Challenge Flutter',
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
      body: DayBlock(
        numberDay: 1,
        onTap: ()=> Get.toNamed('/01'),
      ),
    );
  }
}

