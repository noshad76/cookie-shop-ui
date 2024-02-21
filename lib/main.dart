import 'package:flutter/material.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CookeisMainPage(),
    );
  }
}

class CookeisMainPage extends StatefulWidget {
  const CookeisMainPage({super.key});

  @override
  State<CookeisMainPage> createState() => _CookeisMainPageState();
}

class _CookeisMainPageState extends State<CookeisMainPage> {
  List<String> images = [
    'assets/images/111.png',
    'assets/images/222.png',
    'assets/images/333.png'
  ];
  List<String> cookeisText = ['Chocolate chips', 'Oatmeal with raisins'];
  int group = 2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xFF222328),
                  Color(0xFF2D2F3A),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: const EdgeInsets.all(2),
                            child: const CircleAvatar(
                              radius: 21,
                              backgroundColor: Colors.green,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Merlin',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Text(
                                'Zand',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 79,
                            width: 75,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(17)),
                          ),
                          Positioned(
                            top: -15,
                            left: 18.5,
                            child: Container(
                              width: 37,
                              height: 37,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                              child: const Icon(
                                Icons.shopify,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: -12,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.orange),
                            ),
                          ),
                          const Positioned(
                            top: 30,
                            left: 12,
                            child: Column(
                              children: [
                                Text(
                                  '6',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Product',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Cookies',
                      style: TextStyle(
                          color: Colors.white, fontSize: 40, height: 0.2),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Premium',
                        style: TextStyle(
                            color: Color.fromRGBO(170, 92, 64, 1),
                            fontSize: 30),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'See more',
                            style: TextStyle(
                              color: Color.fromRGBO(170, 92, 64, 1),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 275,
                    width: width,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      padding: const EdgeInsets.only(top: 100),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            debugPrint('tapped');
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(15),
                                height: 135,
                                width: 135,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF353944),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(60),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: 30,
                                child: SizedBox(
                                  width: 90,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cookeisText[index],
                                        style: const TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.houseboat_rounded,
                                            color: Colors.orange,
                                            size: 17,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'PREMIUM',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text(
                                        '20 USD',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 16,
                                left: 17,
                                child: SizedBox(
                                  height: 135,
                                  width: 135,
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(60),
                                      ),
                                      onTap: () {
                                        debugPrint('tapped');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -80,
                                left: 25,
                                child: Image.asset(
                                  images[index],
                                  height: 120,
                                ),
                              ),
                              Positioned(
                                right: 10,
                                bottom: 25,
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Offers',
                          style: TextStyle(
                              color: Colors.white, fontSize: 40, height: 0.2),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              'See more',
                              style: TextStyle(
                                color: Color.fromRGBO(170, 92, 64, 1),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 105,
                        width: width,
                        decoration: const BoxDecoration(
                          color: Color(0xFF353944),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(60),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            images[2],
                            height: 100,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const SizedBox(
                            width: 80,
                            height: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Double chocolate',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.houseboat_rounded,
                                      color: Colors.orange,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'PREMIUM',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const SizedBox(
                            height: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '20 USD',
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      decorationThickness: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '12 USD',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        width: width - 60,
                        height: 105,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(60),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -60,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 125,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Color(0xFF141519),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50),
                      right: Radius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  top: -20,
                  left: 55,
                  width: 275,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            group = 1;
                            debugPrint('$group');
                          });
                        },
                        child: Column(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear,
                              height: group == 1 ? 50 : 45,
                              width: group == 1 ? 50 : 45,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF35373F),
                              ),
                              child: const Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  color:
                                      group == 1 ? Colors.brown : Colors.white,
                                  fontSize: group == 1 ? 11 : 10),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            group = 2;
                            debugPrint('$group');
                          });
                        },
                        child: Column(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear,
                              child: Container(
                                height: group == 2 ? 50 : 45,
                                width: group == 2 ? 50 : 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF35373F),
                                ),
                                child: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                  color:
                                      group == 2 ? Colors.brown : Colors.white,
                                  fontSize: group == 2 ? 11 : 10),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            group = 3;
                            debugPrint('$group');
                          });
                        },
                        child: Column(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear,
                              height: group == 3 ? 50 : 45,
                              width: group == 3 ? 50 : 45,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF35373F),
                              ),
                              child: const Icon(
                                Icons.king_bed_sharp,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Premium',
                              style: TextStyle(
                                  color:
                                      group == 3 ? Colors.brown : Colors.white,
                                  fontSize: group == 3 ? 11 : 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
