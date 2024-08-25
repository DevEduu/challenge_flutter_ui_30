import 'dart:core';
import 'dart:core';

import 'package:challenge_flutter_ui_30/model/user.dart';
import 'package:challenge_flutter_ui_30/utils/ntext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SocializeChat extends StatelessWidget {
  const SocializeChat({super.key});

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final double availableHeight =
        MediaQuery.of(context).size.height - keyboardHeight;

    return Scaffold(
      appBar: AppBar(
        title: NText(
          text: "Matches",
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: keyboardHeight > 0 ? 5 : 4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        width: keyboardHeight > 0
                            ? availableHeight * 0.1
                            : availableHeight * 0.1,
                        height: keyboardHeight > 0
                            ? availableHeight * 0.1
                            : availableHeight * 0.1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              fit: BoxFit.cover, users[index].urlPhoto),
                        ),
                      ),
                    ),
                    NText(
                      text: users[index].name,
                    ),
                    NText(
                      text: users[index].idade.toString(),
                    ),
                  ],
                );
              },
            ),
          ),
          Flexible(
              flex: keyboardHeight > 0 ? 4 : 3,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: InputSeach(),
              )),
          const Gap(10),
          Flexible(
            flex: keyboardHeight > 0 ? 13 : 15,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.transparent.withOpacity(0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                users[index].urlPhoto,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NText(
                              text: users[index].name,
                              color: const Color(0xFFa8a8a8),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.82,
                                child: NText(
                                    color: const Color(0xFF575757),
                                    text:
                                        'Lorem Ipsum is simply dummy text of the printing  industry.')),
                          ],
                        ),
                      ),
                      Expanded(
                          child: NText(
                        text: 'Time',
                        color: const Color(0xFFa8a8a8),
                      ))
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container InputSeach() {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: const BoxDecoration(
          color: Color(0xff262626),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      height: 60,
      width: 360,
      child: TextFormField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: 'Seach',
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.all(10.0),
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: Color(0xFF888888),
            ),
          ),
          hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400, color: const Color(0xff575757)),
        ),
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
