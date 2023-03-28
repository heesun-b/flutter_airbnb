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
    return Column(
      children: [
        Text("한국 숙소에 직접 다녀간 게스트의 후기"
          , style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),)
        , Text("게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점 만점)"
          , style: TextStyle(fontSize: 16, color: Colors.black),),
        SizedBox(height: gap_m),
      ],
    );
  }
}
