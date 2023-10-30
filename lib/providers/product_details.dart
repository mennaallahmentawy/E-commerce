import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/const/card_item.dart';

class ProductDetails extends StatelessWidget {
  final CardItem item;
  const ProductDetails({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.asset(
                item.urlImage,
                fit: BoxFit.cover,
              ),
            ),
             SizedBox(
              height: 8.h,
            ),
            Text(
              item.title,
              style:  TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
