import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: FadeInImage(
        placeholder: AssetImage('assets/images/loading.gif'),
        image: AssetImage('assets/images/goku.png'),
      ),
    );
  }
}