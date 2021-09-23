import 'package:flutter/material.dart';
import 'package:payment_app/src/view/home/home_app_bar.dart';

import 'home_content.dart';
import 'home_footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: const HomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.blue.shade900,
        child: const Icon(Icons.add, color: Colors.white, size: 30,),
      ),
      floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const HomeFooter(),
    );
  }
}