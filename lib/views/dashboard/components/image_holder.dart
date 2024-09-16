import 'package:flutter/material.dart';

class ImageHolder extends StatelessWidget {
  final String image;
  const ImageHolder({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
