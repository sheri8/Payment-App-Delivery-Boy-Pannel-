import 'package:flutter/material.dart';
import 'package:payment_app_vendorpanel/Screens/login.dart';

import '../Utils/colors.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var DropDownC = TextEditingController();
  String dropdownValue = 'Electronics';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 35),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'The Delivery Vendor (DV) can register for 14-day trial\n on Registration',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              SizedBox(height: 30),
              textfield('Name'),
              textfield('Phone Number'),
              textfield('Email Address'),
              textfield('Password'),
              textfield('Location'),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(36))),
                margin: EdgeInsets.only(top: 60, bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Login()));
                    },
                    child: Text(
                      'REGISTER',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      primary: bg,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding textfield(String name) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: name,
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
