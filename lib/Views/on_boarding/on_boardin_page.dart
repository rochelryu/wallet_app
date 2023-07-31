import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Constants/constants.dart';
import '../../Styles/default_page.dart';
import '../../Styles/colors.dart';
import '../authentication/authentication_page.dart';

class OnBoarding extends StatefulWidget {
  static String routeName = '/OnBoarding';
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int current = 0;
  double _opacityValue = 1.0;

  @override
  Widget build(BuildContext context) {
    //print(onBoardingData[current]['picture']);
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            color: onBoardingData[current]['color'].withOpacity(.9),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: 30,
              right: 10,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _opacityValue = 0;
                    current = onBoardingData.length - 1;
                    _opacityValue = 1.0;
                  });
                },
                child: Text("Passer", style: CartoonBoxTheme.subTitle(),),
              )),

          Positioned(
            top: MediaQuery.of(context).size.height * .25,
            left: -MediaQuery.of(context).size.width * .1,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  color: onBoardingData[current]['color'],
                  shape: BoxShape.circle),
              height: MediaQuery.of(context).size.height * .35,
              width: MediaQuery.of(context).size.height * .35,
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * .23,
              left: MediaQuery.of(context).size.width * .01,
              child: AnimatedOpacity(
                opacity: _opacityValue,
                duration: const Duration(milliseconds: 100),
                child: Container(
                  height: MediaQuery.of(context).size.width * .9,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(onBoardingData[current]['picture'])
                    )
                  ),
                ),
              ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .57,
            left: MediaQuery.of(context).size.width * .1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  color: onBoardingData[current]['color'],
                  shape: BoxShape.circle),
              height: 40,
              width: 40,
            ),
          ),
          Positioned(
            bottom: -MediaQuery.of(context).size.width * .12,
            right: -MediaQuery.of(context).size.width * .1,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  color: onBoardingData[current]['color'],
                  shape: BoxShape.circle),
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.height * .2,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .3,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Text(
                  onBoardingData[current]['title'],
                  style: CartoonBoxTheme.title(
                  ),
                    textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  onBoardingData[current]['subtitle'],
                  style: CartoonBoxTheme.subTitle(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .1,
            child: Row(
              children: [
                SizedBox(width: 15),
                Expanded(
                    child: _dotRendering()
                ),
                SizedBox(width: 15),
                ElevatedButton(
                    onPressed: () {
                      if(current < onBoardingData.length - 1) {
                        setState(() {
                          _opacityValue = 0.0;
                        });
                        Timer(const Duration(milliseconds: 100), () {
                          setState(() {
                            current += 1;
                            _opacityValue = 1.0;
                          });
                        });
                      } else {
                        context.go(AuthenticationPage.routeName);
                        //Navigator.pushNamed(context, HomePage.routeName);

                      }
                    },
                    child: Row(
                      children: [
                        Text(current < onBoardingData.length - 1 ? "SUIVANT": "TERMINÉ", style: CartoonBoxTheme.subTitle(textColor: secondaryColor)),
                        const Icon(Icons.arrow_forward_outlined, color: secondaryColor, size: 14,)
                      ],
                    )
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _dotRendering() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: onBoardingData.length,
      itemBuilder: (context, index) {
        return Container(
           height: 10,
          width: 10,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == current ? whiteColor: greyColor.withOpacity(.4)
          ),
        );
      }
    );
  }
}

//onBoardingData[current]['picture']
