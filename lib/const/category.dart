import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.image,
    required this.name,
  });

  final String image, name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 50,
          width: 50,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(name ,style: const TextStyle(fontSize: 14,
          fontWeight: FontWeight.bold,),
        ),
      ],
    );
  }
}
