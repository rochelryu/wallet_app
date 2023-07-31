import 'package:flutter/material.dart';

import '../Styles/colors.dart';

const _kFontFam = 'iconNavigationBottomBar';
const linkOfPUb = 'https://i.ytimg.com/vi/Z3J0P8jluHM/maxresdefault.jpg';
const privateKeyMapbox =
    "sk.eyJ1Ijoicm9jaGVscnl1IiwiYSI6ImNsaGpnMmdsNjBobmczZHAxZXY5NnN3bGwifQ.POrHMagyUQ7Xfe0x1a4sNA";
const urlMapbox =
    "https://api.mapbox.com/styles/v1/rochelryu/clc6cwimd007q14mp7gzvku1v/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoicm9jaGVscnl1IiwiYSI6ImNrMTkwbWkxMjAwM2UzZG9ka3hmejEybW0ifQ.9BIwdEGZfCz6MLIg8V6SIg";
const idMapbox = "mapbox://styles/rochelryu/clc6cwimd007q14mp7gzvku1v";
const String? _kFontPkg = null;
const defaultLat = 5.353066;
const defaultLong = -3.973594;

enum delai_attente { threeMinut, fourMinut, fiveMinut, sixMinut }

const IconData iconAccount =
    IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData iconConso =
    IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData iconHome =
    IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData iconMessage =
    IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);

const tokenName = "tokenIzyphone";
const fullName = 'fullname';
const userKeyId = 'userId';
const userAddressKey = 'userAddressKey';
const telNumKey = 'numeroTelephone';
const levelDisplayKey = 'levelDisplayKey';
const notificationTokenKey = 'tokenNotification';

final String channelKey = "Izyphone_channel";
final String channelName = "Izyphone Notifications";
final String channelDescription = "Izyphone, description";

final List<Map<dynamic, dynamic>> onBoardingData = [
  {
    "color": primaryColor,
    "picture": "assets/images/onBoarding1.png",
    "title": "Enjoy on your TV",
    "subtitle":
        "Watch on Smart TVs, Playstation, Xbox, Chromecast, Apple TV, Blu-ray players, and more.",
  },
  {
    "color": secondaryColor,
    "picture": "assets/images/onBoarding2.png",
    "title": "Download your shows to watch offline",
    "subtitle":
        "Save your favorites easily and always have something to watch.",
  },
  {
    "color": succesColor,
    "picture": "assets/images/onBoarding3.png",
    "title": "Watch everywhere",
    "subtitle":
        "Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.",
  },
];

const List<String> imgList = [
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

const List<String> movieList = [
  'https://img.freepik.com/photos-gratuite/dessin-anime-femme-fond-orange-cercle-jaune-mot-noir-dessus_1340-27944.jpg?w=1480',
  'https://img.freepik.com/vecteurs-premium/portrait-femme-noire-abeille-illustration-lettrage_324389-1081.jpg?w=1480',
  'https://img.freepik.com/vecteurs-libre/journee-sensibilisation-noire-dessinee-main_23-2148681789.jpg',
  'https://img.freepik.com/photos-gratuite/dessin-anime-deux-filles-mot-noir-tete_1340-27954.jpg?w=2000',
  'https://img.freepik.com/vecteurs-libre/peuples-ethniques-tribus-africaines-vetements-traditionnels-dans-nature_1308-49649.jpg?w=2000',
  'https://img.freepik.com/photos-gratuite/personnage-dessin-anime-casserole-crepe-tete_1340-29120.jpg?w=1060'
];

const List<String> titleList = [
  'Le foyer',
  'Le pompier',
  'Copine & Epouse',
  'Retour au foyer',
  'Même pas pauvre',
  'Le mariage'
];
