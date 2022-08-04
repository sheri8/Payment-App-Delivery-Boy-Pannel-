import 'package:flutter/material.dart';

import '../Utils/colors.dart';

class Finances extends StatelessWidget {
  const Finances({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF6F5F5),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        centerTitle: true,
        title: const Text(
          'Finances',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
        ),
      ),
    );
  }
}
