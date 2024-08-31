import 'package:challenge_flutter_ui_30/utils/ntext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Memories extends StatelessWidget {
  const Memories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFd8d5d7),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -100,
            child: Image.asset(
              'lib/view/day_02/assets/landing_page_image.png',
              height: 600,
              fit: BoxFit.fill,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Gap(5),
                  ),
                  Text(
                    'Memories',
                    style: GoogleFonts.dancingScript(
                        fontSize: 70, fontWeight: FontWeight.w900),
                  ),
                  NText(
                    text: 'Make bond stronger',
                    fontSize: 18,
                    color: const Color(0xFF736358),
                  ),
                  const Gap(5),
                  SizedBox(
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll<Color>(Color(0xFFd28f79))),
                      onPressed: () {},
                      child: NText(
                        text: 'Make Memories',
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 10,
                    child: Gap(5),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
