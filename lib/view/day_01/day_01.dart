import 'dart:core';
import 'dart:core';

import 'package:challenge_flutter_ui_30/model/user.dart';
import 'package:challenge_flutter_ui_30/utils/ntext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

List<User> users = [
  User(
      name: "Ella",
      idade: 69,
      urlPhoto:
      "https://i.pinimg.com/736x/ee/ab/58/eeab58a82ccf41f5c12419ec08ada5eb.jpg"),
  User(
      name: "Jane",
      idade: 45,
      urlPhoto:
      "https://i.pinimg.com/550x/12/5f/25/125f257bb2d4a01999e11134b554f6a4.jpg"),
  User(
      name: "Luzia",
      idade: 25,
      urlPhoto:
      "https://www.dicasdemulher.com/wp-content/uploads/2019/06/legenda-para-foto-de-perfil.jpg"),
  User(
      name: "Maria",
      idade: 65,
      urlPhoto:
      "https://i.pinimg.com/736x/51/61/5f/51615fb470ab31cfef04f325252bb0d7.jpg"),
  User(
      name: "Fernanda",
      idade: 25,
      urlPhoto:
      "https://extra.globo.com/incoming/23092382-921-da4/w448/foto.jpeg.jpg"),

  User(
      name: "Viviane",
      idade: 26,
      urlPhoto:
      "https://pm1.aminoapps.com/6847/253a82cd97983a411c2f047d044eb2c4c9024514v2_hq.jpg"),
  User(
      name: "Carla",
      idade: 26,
      urlPhoto:
      "https://cloudfront-us-east-1.images.arcpublishing.com/newr7/INEQVBAUJVJJRGQFQTLLZQTGPQ.jpg"),
  User(
      name: "Julia",
      idade: 26,
      urlPhoto:
      "https://i.pinimg.com/236x/e6/6e/6c/e66e6cf42322bf54b608ea6986049482.jpg"),
];


class SocializeChat extends StatelessWidget {
  const SocializeChat({super.key});

  @override
  Widget build(BuildContext context) {

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
          Expanded(
            flex: 4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            fit: BoxFit.cover,
                            users[index].urlPhoto),
                      ),
                    ),
                    NText(
                      text:users[index].name,
                    ),
                    NText(
                      text: users[index].idade.toString(),
                    ),
                  ],
                );
              },
            ),
          ),
          Flexible(flex: 3, child: Padding(
            padding: const EdgeInsets.all(10),
            child: InputSeach(),
          )),

          Expanded(
            flex: 15,
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
                                  users[index].urlPhoto),
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
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.82,
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


