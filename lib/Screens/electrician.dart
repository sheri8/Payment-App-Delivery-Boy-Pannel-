import 'package:flutter/material.dart';

import '../Utils/colors.dart';

class Electrician extends StatelessWidget {
  const Electrician({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/Basemap image.png',
              ),
              fit: BoxFit.cover)),
      child: Center(child: Image.asset('assets/drivers.png')),
    ));
  }
}
