import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../CommonWidgets/crypto_item.dart';
import '../Styles/colors.dart';
import '../Styles/default_page.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          SvgPicture.asset(
                            "assets/icons/coins.svg",
                            height: 80,
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Votre solde actuelle",
                                    style: MonGayTheme.subTitle(textColor: blackColor.withOpacity(.6)),
                                    //textAlign: TextAlign.end,
                                  ),
                                  SizedBox(height: 10,),
                                  Text("10.710.305 F CFA",
                                    style: MonGayTheme.title(textColor: orangeColor, textSize: 23),
                                    //textAlign: TextAlign.end,
                                  ),
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            //context.go(HomePage.routeName);
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.qr_code_2, color: primaryOpaqueColor, size: 14,),
                              SizedBox(width: 4,),
                              Text("Adresses", style: MonGayTheme.subTitle(textColor: primaryOpaqueColor, textSize: 12))
                            ],
                          ),
                          style: MonGayTheme.defaultStyleButton(),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            //context.go(HomePage.routeName);
                          },
                          child: Row(
                            children: [
                              const Icon(FontAwesomeIcons.anglesDown, color: whiteColor, size: 14,),
                              SizedBox(width: 4,),
                              Text("Retraits", style: MonGayTheme.subTitle(textColor: whiteColor, textSize: 12))
                            ],
                          ),
                          style: MonGayTheme.defaultStyleButton(buttonColor: secondaryColor),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            //context.go(HomePage.routeName);
                          },
                          child: Row(
                            children: [
                              const Icon(FontAwesomeIcons.peopleLine, color: primaryOpaqueColor, size: 14,),
                              SizedBox(width: 4,),
                              Text("Sponsors", style: MonGayTheme.subTitle(textColor: primaryOpaqueColor, textSize: 12))
                            ],
                          ),
                          style: MonGayTheme.defaultStyleButton(),
                        ),
                      ],
                    ),
                  ),
                ),
                ...cryptList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> cryptList() {
    return List.generate(3, (index) => cryptoItem()).toList();

  }
}
