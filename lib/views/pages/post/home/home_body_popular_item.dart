import 'package:flutter/material.dart';

import '../../../../core/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomeBodyPopularItem({required this.id});

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _popularItemImage(),
              _popularItemStar(),
              _popularItemComment(),
              _popularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "${popularList[id]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _popularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            )
          ],
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _popularItemComment() {
    return Column(
      children: [
        Text(
          "파인애플같은 과일에서 나타나는 옥살산칼슘 때문에 그렇답니다. 옥살산칼슘의 결정체는 뾰족하기때문에 혀와 입안의 신경세포가 자극을 받아서 따끔따끔한 증상이 나타나게 되지요. 하지만 파인애플은 그래도 맛있습니당",
          style: TextStyle(fontSize: 16, color: Colors.black),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _popularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("p1.jpeg"),
        ),
        SizedBox(
          width: gap_s,
        ),
        Column(
          children: [
            Text(
              "데어",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text("한국")
          ],
        )
      ],
    );
  }
}
