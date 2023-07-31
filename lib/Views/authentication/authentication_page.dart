import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Styles/colors.dart';

class AuthenticationPage extends StatelessWidget {
  static String routeName = '/AuthenticationPage';
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
            children: [
              SvgPicture.asset(
                "assets/icons/atm.svg",
              ),


            ]));
  }
}
