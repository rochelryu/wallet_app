import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_gay/Views/authentication/signup_page.dart';
import '../../Styles/colors.dart';
import '../../Styles/default_page.dart';

class AuthenticationPage extends StatelessWidget {
  static String routeName = '/AuthenticationPage';
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 7),
                  child: Text("Gérer vos cryptos et votre liquidité", style: MonGayTheme.subTitle(textColor: blackColor.withOpacity(.6), textSize: 20), textAlign: TextAlign.center,),
                ),
                Text("VOUS-MÊME", style: MonGayTheme.title(textColor: blackColor, textSize: 40), textAlign: TextAlign.center,),
                SvgPicture.asset(
                  "assets/icons/atm.svg",
                ),

                Spacer(),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Connectez ou inscrirez-vous",
                    style: MonGayTheme.simpleText(textColor: blackColor.withOpacity(.8), textSize: 16),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 40,),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryOpaqueColor
                      ),
                      child: const Center(
                        child: FaIcon(FontAwesomeIcons.google),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryOpaqueColor
                      ),
                      child: const Center(
                        child: FaIcon(FontAwesomeIcons.facebookF),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          context.go("${AuthenticationPage.routeName}/${SignupPage.routeName}");
                        },
                        child: Text("Numero de téléphone", style: MonGayTheme.subTitle(textColor: primaryOpaqueColor)),
                    ),
                    SizedBox(width: 40),
                  ],
                ),
                //const SizedBox(width: 20,)
              ]
          ),
        )
    );
  }
}
