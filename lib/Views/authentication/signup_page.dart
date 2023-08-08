

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_gay/Views/authentication/authentication_page.dart';
import 'package:mon_gay/Views/authentication/signin_page.dart';
import 'package:mon_gay/Views/home_page.dart';
import '../../CommonWidgets/input_widget.dart';
import '../../Styles/colors.dart';
import '../../Styles/default_page.dart';

class SignupPage extends StatefulWidget {
  static String routeName = 'SignupPage';
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController numberCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmPasswordCtrl = TextEditingController();
  List<bool> elevation = [true, false, false];
  bool visibilityPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: MediaQuery.of(context).size.height * 0.01),
                  child: Text("+10.000 personnes sont satisfait alors", style: MonGayTheme.subTitle(textColor: blackColor.withOpacity(.6), textSize: 20), textAlign: TextAlign.center,),
                ),
                Text("inscrivez-vous", style: MonGayTheme.title(textColor: blackColor, textSize: 40), textAlign: TextAlign.center,),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: MediaQuery.of(context).size.height*0.4,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: GestureDetector(
                      onTap: () {
                        context.go("${AuthenticationPage.routeName}/${SigninPage.routeName}");
                      },
                      child: Text("Vous avez déjà un compte ?",
                          style: MonGayTheme.subTitle(textColor: primaryOpaqueColor,
                              textDecoration: TextDecoration.underline,
                          ),
                        textAlign: TextAlign.end,
                      )
                  ),
                ),
                inputWidget(
                  textEditingController: numberCtrl,
                  elevation: elevation[0],
                  textInputType: TextInputType.number,
                  prefixIcon: Icon(FontAwesomeIcons.phone, color: elevation[0] ? orangeColor : greyColor,),
                  hintText: "Votre numéro de téléphone",
                  onChanged: changeNumber,
                ),
                inputWidget(
                    textEditingController: passwordCtrl,
                    elevation: elevation[1],
                    textInputType: TextInputType.text,
                    prefixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          visibilityPassword = !visibilityPassword;
                        });
                      },
                      child: Icon(!visibilityPassword ? FontAwesomeIcons.eye: FontAwesomeIcons.eyeSlash, color: elevation[1] ? orangeColor : greyColor,),
                    ),
                    hintText: "Un mot de passe",
                    obscureText: !visibilityPassword,
                  onChanged: changePassword,
                ),
                inputWidget(
                    textEditingController: confirmPasswordCtrl,
                    elevation: elevation[2],
                    textInputType: TextInputType.text,
                    prefixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          visibilityPassword = !visibilityPassword;
                        });
                      },
                      child: Icon(!visibilityPassword ? FontAwesomeIcons.eye: FontAwesomeIcons.eyeSlash, color: elevation[2] ? orangeColor : greyColor,),
                    ),
                    hintText: "Confirmez ce mot de passe",
                    obscureText: !visibilityPassword,
                  onChanged: changeChangePassword
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.go(HomePage.routeName);
                      },
                      child:
                      Row(
                        children: [
                          Text("Inscription", style: MonGayTheme.subTitle(textColor: primaryOpaqueColor)),
                          const Icon(Icons.arrow_forward_outlined, color: primaryOpaqueColor, size: 14,)
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
                //const SizedBox(width: 20,)
              ]
          ),
        )
    );
  }

  changeNumber(String text) {
    setState(() {
      elevation = [true, false, false];
    });
  }
  changePassword(String text) {
    setState(() {
      elevation = [false, true, false];
    });
  }
  changeChangePassword(String text) {
    setState(() {
      elevation = [false, false, true];
    });
  }
}

