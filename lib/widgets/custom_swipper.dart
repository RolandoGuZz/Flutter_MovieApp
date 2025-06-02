import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:movie_app/widgets/widgets.dart';

class CustomSwipper extends StatelessWidget {
  const CustomSwipper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.54,
      child: Swiper(
        onTap: (index) => Navigator.pushNamed(context, 'details', arguments: 'la peli'),
        itemBuilder: (context, index) {
          return CustomCardImage();
        },
        itemCount: 10,
        itemWidth: 300,
        autoplay: false,
        //pagination: SwiperPagination(),
        control: SwiperControl(),
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
