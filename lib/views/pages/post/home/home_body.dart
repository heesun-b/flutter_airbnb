import 'package:airbnb_app/views/pages/post/home/home_body_banner.dart';
import 'package:airbnb_app/views/pages/post/home/home_body_popular.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeBodyBanner(),
        HomeBodyPopular(),
      ],
    );
  }
}
