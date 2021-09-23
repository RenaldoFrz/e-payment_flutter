import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey.shade900,
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white, size: 30),
              onPressed: (){},
              splashRadius: 25,
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.grey, size: 30),
              onPressed: (){},
              splashRadius: 25,
            ),
            const SizedBox.shrink(),
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.grey, size: 30),
              onPressed: (){},
              splashRadius: 25,
            ),
            IconButton(
              icon: const Icon(Icons.person, color: Colors.grey, size: 30),
              onPressed: (){},
              splashRadius: 25,
            ),
          ],
        ),
      )
    );
  }
}