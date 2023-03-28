import 'package:airbnb_app/core/size.dart';
import 'package:flutter/material.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: _logo(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 20),
          child: _menu(),
        ),
      ],
    );
  }

  Widget _menu() {
    return Row(children: [
        InkWell(onTap:(){} ,child: Text("로그인", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),)),
        SizedBox(width: gap_m,),
        InkWell(onTap:(){} ,child: Text("회원가입", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white))),
      ],);
  }

  Widget _logo() {
    return Row(children: [
        Image.asset("logo.png", width: 30, height: 30, color: Colors.redAccent,),
        Text("Airbnb", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
      ],);
  }


}
