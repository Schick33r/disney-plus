import 'package:flutter/material.dart';

const disneyLogo = 'assets/disney_plus_logo_white.png';
const kToolbarHeight = 56.0;

AppBar disneyAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: SizedBox(
      height: kToolbarHeight,
      child: Image.asset(
        disneyLogo,
        fit: BoxFit.contain,
      ),
    ),
    toolbarHeight: kToolbarHeight,
  );
}
