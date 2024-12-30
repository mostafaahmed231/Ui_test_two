import 'package:flutter/material.dart';

class HomeOne extends StatefulWidget {
  static const String routName = "one";

  HomeOne({super.key});

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  List<String> images = ["assets/images/v4.png", "assets/images/v3.png"];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Image.asset(
              "assets/images/Logo.png",
              width: 164,
              height: 40,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                  child: Icon(
                Icons.settings,
                color: Color(0xFF4838D1),
              )),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            onTap: (value) {
              selectIndex = value;
              setState(() {});
            },
            currentIndex: selectIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF4838D1),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/v8.png")),
                  label: "Library"),
            ]),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "See more",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4838D1)),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TabBar(
                          isScrollable: true,
                          indicatorWeight: 2,
                          indicatorColor: Colors.transparent,
                          dividerColor: Colors.transparent,
                          tabs: [
                            Container(
                              decoration:
                                  BoxDecoration(color: Color(0xFFF5F5FA)),
                              alignment: Alignment.center,
                              width: 50,
                              height: 40,
                              child: Text(
                                "Art",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF2E2E5D)),
                              ),
                            ),
                            Container(
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Color(0xFFF5F5FA)),
                                alignment: Alignment.center,
                                width: 88,
                                height: 40,
                                child: Text(
                                  "Business",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFF2E2E5D)),
                                ),
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Color(0xFFF5F5FA)),
                              alignment: Alignment.center,
                              width: 88,
                              height: 40,
                              child: Text(
                                "Comedy",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF2E2E5D)),
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Color(0xFFF5F5FA)),
                              alignment: Alignment.center,
                              width: 90,
                              height: 40,
                              child: Text(
                                "Drama",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF2E2E5D)),
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Recommended For You",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "See more",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4838D1)),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 340,
                  width: 420,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(images[index]),
                      );
                    },
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Best Seller",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "See more",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4838D1)),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/v5.png"),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Light Mage",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Text(
                          "Laurie Forest",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6A6A8B),
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Color(0xFFF77A55),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Color(0xFFF77A55),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Color(0xFFF77A55),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Color(0xFFF77A55),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xFFF77A55),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "1,000+ Listeners",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6A6A8B),
                              fontSize: 14),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
