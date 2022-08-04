import 'package:flutter/material.dart';
import 'package:payment_app_vendorpanel/Screens/electrician.dart';
import 'package:payment_app_vendorpanel/Screens/request.dart';

import '../Utils/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: white,
        elevation: 0,
        title: Text(
          'Near Madina Town Faisalabad',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: bg,
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Request()));
              },
              icon: Icon(
                Icons.request_page_outlined,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Image.asset('assets/Vector (1).png')),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: 'What are you looking',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fillColor: Color(0xffD9D9D9),
                        filled: true,
                        border: InputBorder.none,
                      ),
                    ),
                  )),
                  Container(
                    width: 50,
                    height: 50,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.mic_rounded)),
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )
                ],
              ),
              SizedBox(height: 20),
              Image.asset('assets/bg.png'),
              SizedBox(height: 10),
              Text(
                'My ORDERS',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => Electrician()));
                                },
                                child: Image.asset(
                                  'assets/electrcian 1.png',
                                  height: 75,
                                  width: 75,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'ELECTRTION',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                    itemCount: 10),
              ),
              SizedBox(height: 20),
              Text(
                'Reviews',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemBuilder: (context, index) => Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Basic Service',
                                      // 'Basic Service',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: black),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (builder) =>
                                        //             Payment()));
                                      },
                                      child: Container(
                                        width: 100,
                                        height: 24,
                                        decoration: BoxDecoration(
                                            color: white,
                                            border:
                                                Border.all(color: bg, width: 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        child: Center(
                                          child: Text(
                                            'General Motors',
                                            // 'CONFIRMED',
                                            style: TextStyle(color: bg),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Booking ID: 123456789',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: grey),
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: grey,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'General Motors ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: black),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Color(0xffFFBC10),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Color(0xffFFBC10),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Color(0xffFFBC10),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Color(0xffFFBC10),
                                        ),
                                        Icon(
                                          Icons.star_border_rounded,
                                          size: 16,
                                          color: Color(0xffFFBC10),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'DATE',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: grey),
                                            ),
                                            Text(
                                              '21st Sept 2021, Monday',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: grey),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'PICK-UP TIME',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: grey),
                                            ),
                                            Text(
                                              '9:00-9:30am',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: grey,
                              ),
                              SizedBox(height: 40)
                            ],
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
