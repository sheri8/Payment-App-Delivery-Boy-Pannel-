import 'package:flutter/material.dart';
import 'package:payment_app_vendorpanel/Screens/checkout.dart';

import '../Utils/colors.dart';

class Delivery_Summary extends StatelessWidget {
  const Delivery_Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF6F5F5),
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
          'Delivery Summary',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              '3 Items',
              style: TextStyle(
                  color: Color(0xff27A8A1),
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                color: Color(0xffF6F5F5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Thai Long Vogue \nClothes',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.timelapse,
                                color: Color(0xff27A8A1),
                              ),
                              Text(
                                '45 min',
                                style: TextStyle(
                                    color: Color(0xff27A8A1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 60,
                        width: 290,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Rectangle 536.png',
                              fit: BoxFit.cover,
                              height: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              child: Column(
                                children: [
                                  Text(
                                    'City name or user',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff5B5B5B),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.pin,
                                        color: bg,
                                      ),
                                      Text(
                                        'Avenida Palmbeach',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // ListTile(
                      //   leading: Image.asset(
                      //     'assets/Rectangle 536.png',
                      //     fit: BoxFit.cover,
                      //   ),

                      //   // title: ,
                      // ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              product_detail(
                  'Strawberry Dessert', Image.asset('assets/Rectangle.png')),
              SizedBox(height: 10),
              product_detail(
                  'Orange Fruit Jam', Image.asset('assets/Rectangle (1).png')),
              SizedBox(height: 10),
              product_detail(
                  'Golden Fruit Jam', Image.asset('assets/Rectangle231.png')),
              SizedBox(height: 100),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Text(
                              'inclusive of all taxes',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff596273)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 47,
                              child: VerticalDivider(
                                // width: 5,
                                // indent: 5,
                                // endIndent: 5,
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "\$ 30.49",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff06D37D)),
                            ),
                            SizedBox(width: 20),
                          ],
                        ),
                      ]),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        // DataBaseMethods();
                        print('Success');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => CheckOut()));
                      },
                      child: Text(
                        'CONFIRM',
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          primary: bg,
                          fixedSize: Size(360, 55))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container product_detail(String text, Image image) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: ListTile(
          leading: image,
          title: Text(
            text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            'Quantity: 01 Bottle',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          trailing: Container(
            width: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey, width: 0.5)),
                  child: Center(child: Text('01')),
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey, width: 0.5)),
                  child: Center(child: Text("\$10.99")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
