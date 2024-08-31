import 'package:challenge_flutter_ui_30/model/user.dart';
import 'package:challenge_flutter_ui_30/utils/ntext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ModalUser extends StatelessWidget {
  const ModalUser({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;

    // final name = arguments['name'] ?? 'Rosa';
    // final idade = arguments['idade'] ?? '22';
    // final urlUser = arguments['urlUser'] ?? 'https://img.freepik.com/fotos-premium/foto-de-perfil-de-senhora-magra-e-sensual-em-quarentena-em-casa-a-despir-se-de-biquini-dentro-de-casa_842224-8517.jpg';

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: Image.network(
              users[arguments].urlPhoto,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.99),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                    stops: const [0.0, 1.0],
                    tileMode: TileMode.clamp)),
            height: MediaQuery.of(context).size.height * 0.6,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(500),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NText(
                        text:
                            "${users[arguments].name}, ${users[arguments].idade}",
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      const Gap(10),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: BorderRadius.circular(100)),
                      )
                    ],
                  ),
                  NText(
                    text: "125ft from you",
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  const Gap(10),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),

                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50)),
                        child: NText(
                          text: 'Hiking',
                        ),

                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50)),
                        child: NText(
                          text: 'Drawing',
                        )),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50)),
                          child: NText(
                            text: 'Modeling',
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50)),
                          child: NText(
                            text: 'Reading',
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50)),
                          child: NText(
                            text: 'Designing',
                          )),
                    ],
                  ),
                  NText(
                    text: "Bio",
                    fontSize: 28,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  const Gap(5),
                  NText(
                    color: Colors.white.withOpacity(0.7),
                    text:
                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged...',
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color(0xFF282727),
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                            onPressed: () {Get.back();},
                            icon: const FaIcon(
                              FontAwesomeIcons.x,
                              size: 15,
                            ),
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color(0xFF6100ff),
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.heartCirclePlus,
                              color: Colors.deepOrange,
                            ),
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
