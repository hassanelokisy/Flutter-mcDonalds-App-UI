import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcDonalds/models/product.dart';
import 'package:mcDonalds/widgets/menu_option.dart';
import 'package:mcDonalds/widgets/order_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 720, width: 876);
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Container(
                      child: SvgPicture.asset(
                        'assets/images/logo.svg',
                        height: ScreenUtil().setHeight(50),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Hey\n",
                        style: GoogleFonts.nanumBrushScript(
                            color: Colors.black,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "what's up?",
                            style: GoogleFonts.nanumBrushScript(
                                color: Colors.black, fontSize: 40.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(400),
                      child: GridView.builder(
                        itemCount: products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 0.8,
                        ),
                        itemBuilder: (ctx, index) {
                          return MenuOption(products[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Text(
                      "Popular",
                      style: GoogleFonts.nanumBrushScript(
                          color: Colors.black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(300),
                      child: GridView.builder(
                        itemCount: products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 0.4,
                        ),
                        itemBuilder: (ctx, index) {
                          return MenuOption(products[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: ScreenUtil().setHeight(30),
                        ),
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Order",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Text(
                          "Take Out",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: ListView(
                      children: <Widget>[
                        OrderItem(
                            imageUrl: 'assets/images/beverages.png',
                            name: 'Diet Coke',
                            price: r'$ 1.49',
                            quantity: 1),
                        OrderItem(
                            imageUrl: 'assets/images/snacks_and_sides.png',
                            name: 'Large Fries',
                            price: r'$ 3.98',
                            quantity: 2),
                        OrderItem(
                            imageUrl: 'assets/images/cheeseburger.png',
                            name: 'Cheeseburger',
                            price: r'$ 2.49',
                            quantity: 1),
                        OrderItem(
                            imageUrl: 'assets/images/chicken.png',
                            name: 'Nuggets x10',
                            price: r'$ 3.99',
                            quantity: 1),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Center(
                          child: Text(
                            r'$11.95',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFCB3F),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Done",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
