import 'common/BottomNav.dart';
import 'package:flutter/material.dart';
import '../data/interiors_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0E0F11),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // ! greeting
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Good Morning SRS!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xFFE0E4E5)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Find you house here...',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA7A7A7)))
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    fit: BoxFit.cover,
                    height: 52.0,
                    width: 52.0,
                  ),
                ),
              ]),
              const SizedBox(height: 20),

              // ! search
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 36,
                      decoration: BoxDecoration(
                          color: const Color(0xFF111518),
                          borderRadius: BorderRadius.circular(5)),
                      child: const TextField(
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Search Foods & Restaurants',
                            hintStyle: TextStyle(
                                color: Color(0xFFA7A7A7), fontSize: 12),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFFA7A7A7),
                            )),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        color: const Color(0xFF111518),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.tune,
                      color: Color(0xFFE0E4E5),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              // ! cards
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.95,
                  children: interiors
                      .map((interior) => _cardWidget(
                            interior.image,
                            interior.location,
                            interior.bed,
                            interior.bath,
                            interior.area,
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}

Widget _cardWidget(String image, String location, int bed, int bath, int area) {
  return Container(
    decoration: BoxDecoration(
        color: const Color(0xFF111518),
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Color(0xFFE0E4E5),
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      location,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Color(0xFFE0E4E5)),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.hotel,
                        color: Color(0xFFE0E4E5),
                        size: 12,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '$bed',
                        style: const TextStyle(
                            color: Color(0xFFE0E4E5), fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.hot_tub,
                        color: Color(0xFFE0E4E5),
                        size: 12,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '$bath',
                        style: const TextStyle(
                            color: Color(0xFFE0E4E5), fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.square_outlined,
                        color: Color(0xFFE0E4E5),
                        size: 12,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '$area',
                        style: const TextStyle(
                            color: Color(0xFFE0E4E5), fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
