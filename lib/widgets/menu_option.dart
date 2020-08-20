import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuOption extends StatelessWidget {
  final Product product;
  MenuOption(@required this.product);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 720, width: 876);
    return Container(
      height: 200,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Image.asset(product.imageUrl),
          SizedBox(
            height: ScreenUtil().setHeight(20),
          ),
          Text(
            product.title,
            style: GoogleFonts.nanumBrushScript(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
