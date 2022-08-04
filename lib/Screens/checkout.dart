import 'package:flutter/material.dart';
import 'package:payment_app_vendorpanel/Screens/finances.dart';
import 'package:payment_app_vendorpanel/Utils/colors.dart';

enum SingingCharacter {
  a,
  b,
}

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  SingingCharacter? _character = SingingCharacter.a;

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
          'Checkout',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 34),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Address details',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Change',
                    style: TextStyle(
                        color: Color(0xffF47B0A),
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Marvis Kparobo',
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Km 5 refinery road oppsite republic road, effurun, delta state',
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '+234 9011039271',
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Delivery method.',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            SizedBox(height: 10),
            Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<SingingCharacter>(
                        activeColor: Colors.red,
                        value: SingingCharacter.a,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      title: Text(
                        'Door delivery',
                        style: TextStyle(color: black),
                      ),
                    ),
                    Divider(
                      thickness: 0.5,
                      color: grey,
                    ),
                    ListTile(
                      leading: Radio<SingingCharacter>(
                        activeColor: Colors.red,
                        value: SingingCharacter.b,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      title: Text(
                        'Pick up',
                        style: TextStyle(color: black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      color: black, fontSize: 17, fontWeight: FontWeight.w400),
                ),
                Text(
                  '23,000',
                  style: TextStyle(
                      color: black, fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    // DataBaseMethods();
                    print('Success');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Finances()));
                  },
                  child: Text(
                    'Proceed to payment',
                    style: TextStyle(fontSize: 24),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      primary: bg,
                      fixedSize: Size(350, 55))),
            ),
          ],
        ),
      ),
    );
  }
}
