import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      color: Colors.transparent,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.amber,
                size: 38,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 34,
              ),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.red,
              icon: const Icon(
                Icons.question_answer,
                color: Colors.white,
                size: 34,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person, color: Colors.white, size: 34),
            ),
          ]),
    );
  }
}
