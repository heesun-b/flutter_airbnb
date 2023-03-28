import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/views/pages/post/home/home_body_popular_item.dart';
import 'package:flutter/material.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _popularTitle(),
          _popularList()
        ],
      ),
    );
  }

  Widget _popularList() {
    return Wrap(
        children: [
          HomeBodyPopularItem(id: 0,),
          SizedBox(width: 7.5,),
          HomeBodyPopularItem(id: 1,),
          SizedBox(width: 7.5,),
          HomeBodyPopularItem(id: 2,),
        ],
      );
  }

  Widget _popularTitle() {
    return SizedBox();
  }
}
