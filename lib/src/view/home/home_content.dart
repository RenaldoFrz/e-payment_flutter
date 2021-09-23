import 'package:flutter/material.dart';
import 'package:payment_app/src/model/operations.dart';
import 'package:payment_app/src/model/transactions.dart';

import '../../constant.dart';
import '../../model/card_model.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({ Key? key }) : super(key: key);

  get scrollDirection => null;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: kTextColor),
              ),
              Text(
                'Renaldo Fareza',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: kTextColor),
              ),
            ],
          ),
        ),
        Container(
          height: 199,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemCount: cards.length,
            itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 10),
              height: 200,
              width: 344,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(cards[index].cardBackground),
              ),
              child: Stack(
                children: <Widget> [
                  const Positioned(
                    left: 25,
                    top: 22,
                    child: Text(
                      'CARD NUMBER',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kBackgroundColor)
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 45,
                    child: Text(
                      cards[index].cardNumber,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: kBackgroundColor)
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 0,
                    child: Image.asset((cards[index].cardType), width: 70, height: 70,)
                  ),
                  const Positioned(
                    left: 25,
                    bottom: 45,
                    child: Text(
                      'CARD HOLDERNAME',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kBackgroundColor)
                    ),
                  ),
                  Positioned(
                    left: 25,
                    bottom: 22,
                    child: Text(
                      cards[index].user,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: kBackgroundColor)
                    ),
                  ),
                  const Positioned(
                    right: 60,
                    bottom: 65,
                    child: Text(
                      'VALID\nTHRU',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: kBackgroundColor)
                    ),
                  ),
                  Positioned(
                    right: 15,
                    bottom: 70,
                    child: Text(
                      cards[index].cardExpired,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: kBackgroundColor)
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Operations',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(logo.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Container(
                      height: 120,
                      width: 100,
                      child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all<Color>(kBlueColor),
                        backgroundColor: MaterialStateProperty.all<Color>(kBackgroundColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )
                        )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(logo[index]['image']?? ""),
                          const SizedBox(height: 10),
                          Text(
                            logo[index]['id']?? "",
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: kTextColor),
                          )
                        ],
                      )
                    ),
                  ),
                );
              })
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'History Activity',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        ListView.builder(
          itemCount: transactions.length,
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20, top: 20, right: 20),
          itemBuilder: (context, index){
            return Container(
              height: 57,
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 12, right: 20),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    blurRadius: 10,
                    spreadRadius: 2
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 57,
                        width: 57,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(transactions[index]['image']?? "")),
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(transactions[index]['id']?? "", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: kTextColor),),
                          Text(transactions[index]['subtitle']?? "", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: kTextColor),)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(transactions[index]['total']?? "", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: kTextColor),),
                    ],
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}