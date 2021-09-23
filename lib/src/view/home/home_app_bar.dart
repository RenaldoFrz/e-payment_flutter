import 'dart:ui' show Size;
import 'package:flutter/material.dart';
import 'package:payment_app/src/constant.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.menu, color: Colors.grey.shade700, size: 30), 
                splashRadius: 25
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Image(image: AssetImage('assets/logo/money.png'),width: 30, height: 30,),
                    SizedBox(width: 10),
                    Text(
                      'e-pay',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: kTextColor),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/profile.jpg"),
                    fit: BoxFit.fill
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}