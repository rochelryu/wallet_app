
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../CommonWidgets/input_widget.dart';
import '../../Styles/colors.dart';
import '../../Styles/default_page.dart';
import '../home_page.dart';

class SigninPage extends StatefulWidget {
  static String routeName = 'SigninPage';
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController numberCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  List<bool> elevation = [true, false];
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
                  "assets/icons/login.svg",
                  height: MediaQuery.of(context).size.height*0.4,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: GestureDetector(
                      onTap: () {
                      },
                      child: Text("Vous ête nouveau ?",
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
                  hintText: "Votre mot de passe",
                  obscureText: !visibilityPassword,
                  onChanged: changePassword,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {

                        },
                        child: Text("Mot de passe oublié ?",
                            style: MonGayTheme.subTitle(textColor: primaryOpaqueColor, textDecoration: TextDecoration.underline)
                        )
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.go(HomePage.routeName);
                      },
                      child:
                      Row(
                        children: [
                          Text("Connexion", style: MonGayTheme.subTitle(textColor: primaryOpaqueColor)),
                          const Icon(Icons.arrow_forward_outlined, color: primaryOpaqueColor, size: 14,)
                        ],
                      ),
                    ),
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

